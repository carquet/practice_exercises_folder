# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# - Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# - Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.

class Person
  attr_reader :first_name, :middle_name, :last_name
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    if @middle_name == nil
      p "#{@first_name} #{@last_name}"
    else
    p "#{@first_name} #{@middle_name} #{@last_name}"
    end
  end

  def full_name_with_middle_initial
    if @middle_name == nil
       p "#{@first_name} #{@last_name}"
     else

    p "#{@first_name} #{@middle_name[0]}. #{@last_name}"
    end
  end

  def initials
    
    "D.H.H."
  end
end

RSpec.describe Person do
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      person = Person.new(first_name: 'David', middle_name: 'Heinemeier', last_name:'Hansson')
      expect(person.full_name).to eq("David Heinemeier Hansson")
    end

    it "does not add extra spaces if middle name is missing" do
      person = Person.new(first_name: 'Laetitia', last_name:'Carquet')
      expect(person.full_name).to eq("Laetitia Carquet")
    end
  end

  describe "#full_name_with_middle_initial" do
      it "concatenates first name, initial of middle name and last name" do
        person = Person.new(first_name: 'David', middle_name: 'Heinemeier', last_name:'Hansson')
        expect(person.full_name_with_middle_initial).to eq("David H. Hansson")
      end
      it "does not add an extra space with a dot if middle name is missing" do
        person = Person.new(first_name: 'Laetitia', last_name:'Carquet')
        expect(person.full_name_with_middle_initial).to eq("Laetitia Carquet")
      end
  end

  describe "#initials" do
    it "gives the initials of the names given" do
      person = Person.new(first_name: 'David', middle_name: 'Heinemeier', last_name:'Hansson')
      expect(person.initials).to eq("D.H.H.")
    end
  end
end