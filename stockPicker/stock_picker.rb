require "rspec"

def stock_picker(arr)
	if edge_day(arr)
		"yupi let's buy"
	end

end

def edge_day(arr)
	if arr[0] == arr.max
		"The highest price is on the first day, it's not a good week"
		return false
	elsif arr[arr.length - 1] == arr.min
		"The lower day is on the last day, it's not a good week"
		return false
	else
		 true
	end
end


RSpec.describe "edge_day" do 
	it "returns false when the highest day is the first day" do
		expect(edge_day([12,3, 2, 10, 3, 4])).to eql(false)

	end
	it "returns false when the lowest day is the last day" do
		expect(edge_day([3, 2, 10, 3, 1])).to eql(false)

	end

	it "returns true if there is no edge days" do
		expect(edge_day([3, 2, 10, 3, 4])).to eql(true)
	end

end

RSpec.describe "stock_picker" do 
	it "returns string if it's ready to go" do
		expect(stock_picker([3, 2, 10, 3, 4])).to eql("yupi let's buy")

	end
end
	

