# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
	this = 0
    for i in 0..nums.length-1
    	this = nums[i]
    	if target > this
    		if i == nums.length-1
    			return nums.length
    		end
    		if target < nums[i+1]
    			return i+1
    		end
    	elsif target = this
    		return i
    	end
    end
end