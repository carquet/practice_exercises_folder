#spec/calculator_spec.rb

require './lib/bubble'

RSpec.describe "#bubble_sort" do
    it "sorts an array from smallest to biggest positive numbers" do
      expect(bubble_sort([3,5,2,6,1])).to eql([1,2,3,5,6])
    end
    it "sorts an array from smallest to biggest negative numbers" do
      expect(bubble_sort([-3,-5,-2,-6,-1])).to eql([-6,-5,-3,-2,-1])
    end
    it "organizes negative and positive numbers in an increasing value" do
      expect(bubble_sort([-3,5,-2,-6,1])).to eql([-6,-3,-2,1,5])
    end
    it "returns a message when the argument is other than an array" do
      expect(bubble_sort("string")).to eql("The method accepts only arrays")
    end
end

# 1. describe the class 
# 2. describe the method example group. 
# Conventionally, the string argument for instance methods are written as “#method”, 
# while string arguments for class methods are written as “.method”. 
# 3. Write your test case/example with it. 
# 4. Write your expectation using expect. 
# The expect method is also chained with .to for positive expectations, 
# or .to_not/.not_to for negative expectations. We prefer .not_to. 
# Also, limit one expect clause per test case.