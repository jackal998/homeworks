# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    war=nums.sort
    i=0
    while i<nums.length
    	if war[i]==war[i+1]
    		i+=2
    	else
    		return war[i]
    	end
    end
end

nums = [12,21,24,125,34,457,56,73,2,41,31,53,247,3,12,21,24,125,34,457,56,73,2,41,31,53,247]
puts single_number(nums)