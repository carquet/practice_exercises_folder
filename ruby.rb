def solution(str)
	if str.empty?
		return []
	end
end



RSpec.describe "#solution" do 
	it "return an array if the string given is empty" do
		expect(solution("")).to eq([])
	end

end