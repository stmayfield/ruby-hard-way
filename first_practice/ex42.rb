## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal 
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## class Cat is-a object of class Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name (property)
    @name = name
  end
end

## class Person is-a object
class Person

  def initialize(name)
    ## Person has-a name of some kind
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## class Employee is-a object of Person
class Employee < Person

  def initialize(name, salary)
    ## Person has-a name
    super(name)
    ## Employee has-a salary property
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a object of Fish
class Salmon < Fish
end

## Halibut is-a object of fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a cat
satan = Cat.new("Satan")

## mary is-a person
mary = Person.new("Mary")

## mary has-a pet attribute of satan
mary.pet = satan

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## frank has-a pet attribute of rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()