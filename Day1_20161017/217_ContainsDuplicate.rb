# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    chkn = 0
    h1={}
    for i in 0..nums.length-1
        if h1["#{nums[i]}"]
            return true
        else
            h1["#{nums[i]}"] =1
        end
    end
    return false
end