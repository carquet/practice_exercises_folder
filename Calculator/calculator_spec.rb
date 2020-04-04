#spec/calculator_spec.rb

require './lib/calculator'

RSpec.describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end
    # add this
    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe "#multiply" do
  	it "returns the multiplication of two numbers" do
  		calculator = Calculator.new
  		expect(calculator.multiply(5,2)).to eql(10)
  	end

  	it "returns the multiplication of more than two numbers" do
  		calculator = Calculator.new
  		expect(calculator.multiply(2,5,6)).to eql(60)
  	end
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