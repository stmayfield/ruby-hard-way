# define class Parent, define override, implicit, and altered method
class Parent
    def override()
        puts "PARENT override()"
    end

    def implicit()
        puts "PARENT implicit()"
    end

    def altered()
        puts "PARENT altered()"
    end
end

# define class Child, which inherits override, implicit, and altered methods from class Parent
# defines override method which replaces override method from Parent class
# defines altered method, which replaces altered method fomr Parent class except at super(), which brings altered method from Parent class
class Child < Parent
    def override()
        puts "CHILD override"
    end

    def altered()
        puts "CHILD, BEFORE PARENT altered()"
        super()
        puts "CHILD, AFTER PARENT altered()"
    end
end

# instantiate class instance
dad = Parent.new()
son = Child.new()

# call class methods
# Parent.new().implicit()
dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()