# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
	if prices.length == 0
		return 0
	end
    lp = prices[0]
    lpos = 0
    hp = prices[0]
    hpos = 0
    hp1 = 0
    for i in 0..prices.length-2
    	if lp > prices[i+1]
    		if hp1 < hp-lp
    			hp1 = hp-lp
    		end
    		lp = prices[i+1]
    		lpos = i+1
    		hp = lp
    		hpos = lpos
    	else
    		if hp < prices[i+1]
	    		hp = prices[i+1]
	    		hpos = i+1
    		end
    	end
    end
    if hp1 > hp-lp
    	return hp1
    else
    	return hp-lp
    end
end
prices = [2,4,1]
# prices = [12,3,12,1,5,3,35,47,5,95,633,72,1,2,33,431,9]

puts max_profit(prices)