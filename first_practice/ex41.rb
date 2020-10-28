require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
    "class ### < ###\nend" => "Make a class named ### that is-a ###.",
    "class ###\n\tdef initialize(@@@)\n\tend\nend" => "class ### has-a initialize that takes @@@ parameters.",
    "class ###\n\tdef ***(@@@)\n\tend\nend" => "class ### has-a function named *** that takes @@@ parameters.",
    "*** = ###.new()" => "Set *** to an instance of class ###.",
    "***.***(@@@)" => "From *** get the *** function, and call it with parameters @@@.",
    "***.*** = '***'" => "From *** get the *** attribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] = "english"

# open txt file, iterate through each line, 
# open(file) {|arg| arg.each_line}
URI.open(WORD_URL) {|f| f.each_line {|word| WORDS.push(word.chomp) }}

def craft_names(rand_words, snippet, pattern, caps=false)
    names = snippet.scan(pattern).map do # .scan() iterate through string and match to a regex pattern, 'do' syntax = for loop
        word = rand_words.pop() # .pop() removes last array item and returns
        caps ? word.capitalize : word
    end

    return names * 2
end

def craft_params(rand_words, snippet, pattern)
    # Array item 0 through item snippet
    names = (0...snippet.scan(pattern).length).map do
        param_count = rand(3) + 1
        params = (0...param_count).map {|x| rand_words.pop() }
        params.join(', ')   
    end

    return names * 2
end

def convert(snippet, phrase)
    rand_words = WORDS.sort_by {rand}
    class_names = craft_names(rand_words, snippet, /###/, caps=true)
    other_names = craft_names(rand_words, snippet, /\*\*\*/)
    param_names = craft_params(rand_words, snippet, /@@@/)

    results = []

    [snippet, phrase].each do |sentence|
        result = sentence.gsub(/###/) {|x| class_names.pop} #.gsub "global substitute", replace word with word
    
        result.gsub!(/\*\*\*/) {|x| others_names.pop }

        result.gsub!(/@@@/) {|x| param_names.pop}

        results.push(result)
    
    end

    return results
end

loop do
    snippets = PHRASES.keys().sort_by {rand}

    for snippet in snippets do
        phrase = PHRASES[snippet]
        question, answer = convert(snippet, phrase)

        if PHRASE_FIRST
            question, answer = answer, question
        end

        print question, "\n\n>"

        exit(0) unless @stdin.gets

        puts "\nANSWER: %s\n\n" % answer

    end
end

