# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
	rm=0
	# if nums.length <2
	# 	return nums.length
	# end
    for i in 0..nums.length-2
    	if nums[i] == nums[i+1]
    		rm += 1
    	else
    		nums[i+1-rm] = nums[i+1]
    	end
	end
	for rmc in 1..rm
		nums.pop
	end
	return nums.length
end
nums=[1]
puts remove_duplicates(nums)
