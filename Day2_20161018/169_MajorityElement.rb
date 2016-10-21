# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hs={}
    if nums.length ==1
    	return nums[0]
    end
    for i in 0..nums.length-1
    	tn = nums[i]
    	if hs[tn]
    		hs[tn] += 1
    		if hs[tn] > nums.length / 2
    			return tn
    		end
    	else
    		hs[tn]=1
    	end
    end
end
nums =[1,3,3]
puts majority_element(nums)
