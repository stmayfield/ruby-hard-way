## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a object of class Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a attribute of name
    @name = name
  end
end

## Cat is-a object of class Animal
class Cat < Animal

  def initialize(name)
    ## class cat has-a attribute of name
    @name = name
  end
end

## Person is-a object class
class Person

  def initialize(name)
    ## object Person has-a attribute of name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a object of class Person
class Employee < Person

  def initialize(name, salary)
    ## Employee has-a attribute of name from object Person
    super(name)
    ## Instance of Employee object has-a variable of 'salary'
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a object of class Fish
class Salmon < Fish
end

## Halibut is-a object of class Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a instance of class object Cat
satan = Cat.new("Satan")

## may is-a instance of class object Person
mary = Person.new("Mary")

## Mary has-a method of 'pet'
mary.pet = satan

## frank is-a instance of class object Employee
frank = Employee.new("Frank", 120000)

## Frank has-method of 'pet'
frank.pet = rover

## flipper is-a instance of class Fish
flipper = Fish.new()

## crouse is-a instance of class Salmon
crouse = Salmon.new()

## harry is-a instance of class Halibut
harry = Halibut.new()