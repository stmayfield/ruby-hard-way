class Room
    def initialize(name, description)
        # Setting up instance variables
        @name = name
        @description = description
        @paths = {}
    end

    # Class attributes/variables @@
    attr_reader :name 
    attr_reader :description 
    attr_reader :paths

    def go(direction)
        return @paths[direction]
    end

    def add_paths(paths)
        @paths.update(paths)
    end

end