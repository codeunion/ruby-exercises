# Classes: Person
#
# See person_notes.rb for a version with notes + commentary on the code.
# Edit this version, though.

# We're going to learn how to define classes in Ruby and create custom
# Ruby objects from those classes.

# Can you modify the Person class to include additional information?
# For example, can you add support for "age"?  Like so:
#
#    person = Person.new("Jesse", "Farmer", 30)
#    puts "#{person.full_name} is #{person.age} years old."
#
# You don't NEED to do this.  The main point of this file is to show you
# how to define a class, create new instance objects, and define
# instance variables.  Add questions you have about this file at the bottom,
# request feedback from us, and we'll answer them!

class Person
  # This is the initialization method and although it's an instance method,
  # it's special in that it gets called whenever we call Person.new
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # The first_name instance methods returns the value of the
  # @first_name instance variable
  def first_name
    @first_name
  end

  # The last_name instance methods returns the value of the
  # @last_name instance variable
  def last_name
    @last_name
  end

  # The first_initial instance method returns the first letter of
  # this person's *first* name
  def first_initial
    self.first_name[0]
  end

  # The last_initial instance method returns the first letter of
  # this person's *last* name
  def last_initial
    self.last_name[0]
  end

  # The full_name instance method returns the this person's "full name",
  # i.e., their first and last names separated by a space
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # The short_name instance method returns this person's "short name",
  # i.e., their entire first name plus their last name's initial
  def short_name
    "#{self.first_name} #{self.last_initial}." # e.g., "Jesse F."
  end

  # The initials instance method returns this person's initials,
  # i.e., the first letter of their first name concatenated with the
  # first letter of their last name
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
