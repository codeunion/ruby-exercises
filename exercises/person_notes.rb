# Classes: Person
#
# We're going to learn how to define classes in Ruby and create custom
# Ruby objects from those classes.
#
# Note: This file is here to help you better understand the idea of object-oriented
#       programming.  You can do your work in person.rb.
#
# Classes and objects were invented to model "real-world" situations in
# in a way more familiar to people.  For example, below we are defining
# a new class called "Person."  This class acts as a blueprint for every
# individual person.
#
# Once we have a class called Foobar, we can create new objects using that class
# as a blueprint by calling "Foobar.new".  We'd say these objects are
# "instances of Foobar."  If we had a class called Door, for example, the class
# would represent universal aspects of "door-ness" and allow us to fill in
# particular properties like the material the door was made with, the color
# of the door, whether the door opened inwards or outwards, etc.
#
# As people we recognize that an oak door with a metal knob is just as much
# a door as a glass door with handles.  The "oak door" and "glass door" are
# therefore "instances" of this more abstract notion of "Door".

class Person
  def initialize(first_name, last_name)
    # @first_name and @last_name are "instance variables", which means
    # they're variables partiuclar to a given instance of the Person class.
    # The "@" is how Ruby tells that they are instance variables.
    @first_name = first_name
    @last_name = last_name
  end

  # first_name is an instance method, which means we'll be able to call it on
  # instances of the Person class
  def first_name
    # An instance variable is visible inside the instance in which we set
    # it and nowhere else.
    @first_name
  end

  # last_name is an instance method, too. This pattern of defining an instance
  # method that returns the current value of a specific instance variable is
  # called a "getter" or a "reader". It allows people using our objects
  # to see and use the value of an instance variable, which would otherwise
  # be unvailable to them.  Note that this is "read-only", i.e., people using
  # a Person object can see the value of @last_name by calling this method,
  # but they have no way of *changing* the value of @last_name.
  def last_name
    @last_name
  end

  def first_initial
    # Here, "self" refers to "the current instance" and so we're calling
    # the first_name and last_name instance methods, here.
    # Remember, the "first_name" instance method returns a String,
    # so this returns the first letter of the String returned by first_name.
    self.first_name[0]
  end

  def last_initial
    self.last_name[0]
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def short_name
    "#{self.first_name} #{self.last_initial}." # e.g., "Jesse F."
  end

  def initials
    "#{self.first_initial}#{self.last_initial}" # e.g., "JF"
  end
end

if __FILE__ == $0
  print "Enter your first name: "
  first_name = gets.chomp

  print "Enter your last name:  "
  last_name = gets.chomp

  # Person.new returns a new instance of the Person class and we assign it
  # to the variable person
  person = Person.new(first_name, last_name)

  puts "You entered..."
  puts "First name: #{person.first_name}"
  puts "Last name:  #{person.last_name}"
  puts ""

  puts "Welcome, #{person.first_name}!"
  puts ""

  puts "Full name:  #{person.full_name}"
  puts "Short name: #{person.short_name}"
  puts "Initials:   #{person.initials}"
end

# Object-Oriented Vocabulary
#
# Here are some "true sentences" about the code above.
#
# 1. Person is a class.
# 2. Person.new takes two arguments: first_name, last_name
# 3. person = Person.new(first_name, last_name) returns an object
# 4. This object (person) is an instance of the Person class
# 5. person.first_name is an instance method
# 6. @first_name is an instance variable
# 7. @first_name is only accessible from inside its instance, unless
#    we write code to expose its value to code "outside".
# 8. person.first_name returns the value of the @first_name instance variable
# 9. person.full_name returns a formatted String representing a person's
#    full name, i.e., first and last names together.
