def solution(str)
	array = []
	if str.empty?
		return []

		end

	end
end

solution("abcdef")

RSpec.describe "#solution" do 
	it "return an array if the string given is empty" do
		expect(solution("")).to eq([])
	end
	it "returns an array of pairs of characters if the string index is even" do
		expect(solution("abcdef")).to eq(["ab", "cd", "ef"])
	end
		it "returns an array of pairs of characters lat pair with - if the string index is odd" do
		expect(solution("abcdefg")).to eq(["ab", "cd", "ef", "g_"])
	end


end