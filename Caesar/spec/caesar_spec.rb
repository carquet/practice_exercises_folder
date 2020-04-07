#spec/caesar_spec.rb

require './lib/caesar'

RSpec.describe Caesar do 
	describe "#solve_cipher" do
		it "returns a string of shifted characters by 1 number" do
		caesar = Caesar.new("Hello Dolly!", 1)
		expect(caesar.solve_cipher).to eql("Ifmmp Epmmz!")
		end
		it "returns a string of shifted characters by 2 number" do
		caesar = Caesar.new("Hello Dolly!", 2)
		expect(caesar.solve_cipher).to_not eql("Jgnnq Fqnna!")
		end

		it "returns a string of shifted characters by - 2 number" do
		caesar = Caesar.new("Jgnnq Fqnna!", - 2)
		expect(caesar.solve_cipher).to_not eql("Hello Dolly!")
		end

		it " returns a string of shifted character within the alphabet if given 10" do
			caesar = Caesar.new("Hello, Dolly!", 10)
			expect(caesar.solve_cipher).to eql("Rovvy, Nyvvj!")
		end
	end

	describe "#shift" do
		it "shift the character by 1 " do
			caesar = Caesar.new("Hello Dolly!", 1)
			expect(caesar.shift("H")).to eql("I")

		end
		it "shift the character by 2 " do
			caesar = Caesar.new("Hello Dolly!", 2)
			expect(caesar.shift("H")).to eql("J")

		end

		it "unshift the character by -2 " do
			caesar = Caesar.new("Hello Dolly!", -2)
			expect(caesar.shift("J")).to eql("H")

		end
	end
	
end