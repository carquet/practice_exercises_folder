class  Caesar
	attr_reader :string, :shiftnum
	def initialize(string, shiftnum)
		@string = string
		@shiftnum = shiftnum
	end

#pass the string into a map
	def solve_cipher
		array = @string.chars.map { |item| 
			if item.match(/[A-Za-z]/)
				shift(item)
			else
				item
			end
		}
		p array.join
	end

#shift the character to shifnum place
	def shift(char)
			ascii_shifted = char.ord + @shiftnum
			check(char, ascii_shifted)		
	end

	def check(char_given,shifted_result)
		if char_given.ord <= 90 && shifted_result > 90
			(shifted_result - 25).chr
		elsif (char_given.ord >= 97 && char_given.ord <= 122) && shifted_result > 122
			(shifted_result - 25).chr
		else
			(shifted_result).chr
		end
	end

end
first = Caesar.new("Hello, Dolly!", 10)
p first.string
first.solve_cipher

first = Caesar.new("hello, Dolly!", 2)
p first.string
first.solve_cipher

#add what if string is empty? --> ask input
#add what if shiftnum is empty? ---ask input
#encapsulate the alphabet to return only letters when shifted.