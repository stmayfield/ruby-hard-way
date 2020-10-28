class Song
    
    def initialize(lyrics)
        # instance variable @ (instance created in Song.new is called)
        @lyrics = lyrics
    end

    def sing_me_a_song()
        # Each method {|parameter| function parameter}
        @lyrics.each {|line| puts line}
    end
end

# Array ["", "", ""]
happy_bday = Song.new(["Happy birthday to you",
    "I don't want to get sued",
    "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
    "With pockets pull of shells"])


# array with 3 line string string from happy_bday passed through initialized method argument in Song class
# string assinged to instance variable.
# sing_me_a_song method graps string and runs for each method
happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()