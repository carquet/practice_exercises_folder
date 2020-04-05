# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology 
# (using #sort would be pretty pointless, wouldn’t it?).


def bubble_sort(array)
	if array.class != Array
		return "The method accepts only arrays"
	end
	length = (array.size) - 1
	isSorted = false
	while !isSorted #--> keep doing that while the array is not sorted
		isSorted = true  #--> I set up the exit of the while. If after *.times, everything is compared, the if won't be activated and the isSorted won't be changed back into a false.
		length.times do |index| #--->the length is shorter than the real length so as to not compare the last element with nothing!
		#--> 
			if array[index] > array[index+1]
				array[index] , array[index+1] = array[index+1], array[index]
			isSorted = false #---> hey while loop! continue because the array is not sorted yet
			end
			
		end
	end
	return array
	 
end



bubble_sort([3,5,2,6,1])

