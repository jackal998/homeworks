# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
	nnum =[]
	cz =0
    for i in 0..nums.length-1 do
    	if nums[i] ==0
	    	cz += 1
	    else
	    	nnum.push(nums[i])
	    end
	end
	for ii in 0..nnum.length-1 + cz do
		nums[ii] = ii < nnum.length ? nnum[ii]:0
	end
end

nums = [5,3,24,215,9,0,968,457,2,0,75,0,1,2,0,3,4,5,0]
move_zeroes(nums)
puts nums