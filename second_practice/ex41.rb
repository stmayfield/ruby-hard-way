require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
# initialize a new array
WORDS = []

# ???
PHRASES = {

}

# program takes in argument variable, "english" arg assigned to PHRASE_FIRST (if statement later)
PHRASE_FIRST = ARGV[0] == "english"

# open file at URL, grab word from each line and push to array "WORDS"
open(WORD_URL) do |f|
    f.each_line do |word|
        WORDS.push(word.chomp)
    end
end

def craft_names(rand_words, snippet, pattern, caps=false)
    # scan => iterate through string, match regex pattern
    # map => loop through each snippet
    # snippet => ???
    names = snippet.scan(pattern).map do
        # rand_words => WORDS sorted by {rand}
        # pop => removes and returns last element, pop(2) removes and returns last 2 elements, etc
        word = rand_words.pop()
        # ternary expression => evaluate caps, if true, then return capitalize 'word', otherwise return 'word'
        caps ? word.capitalize : word 
    end
    # names = word removed from array
    # craft_names returns word times 2
    return names * 2
end

def craft_params(rand_words, snippet, pattern)
    # name = range 0 - (int not included)
    # int is 
    names = (0...snippet.scan(pattern).length).map do
        # rand number between (0 and 2 ) + 1. rand number between 1 and 3
        param_count = rand(3) + 1
        params = (0...param_count).map do |x|
            rand_words.pop()
        end
        params.join(', ')
    end

    return names * 2
end

def convert(snippet, phrase)
    rand_words = WORDS.sort_by {rand}
    class_names = craft_names()
    other_names = craft_names()
    param_names = craft_params()

    results = []

    [].each do |sentence|
        # gsub/global substitute; replace word with word
        result = sentence.gsub() {}
    end
end