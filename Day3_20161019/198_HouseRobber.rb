# @param {Integer[]} nums
# @return {Integer}
def rob(nums)

	p , n = 0 , 0
	nums.each do |nw|
		p , n =
		n + nw , [p , n].max
	end

	return [p , n].max
end

a = [127,188,240,241,164,137,123,78,118,84,210,242,87,214,237,206,183,210,81,171,66,80,109,65,76,109]
puts rob(a)