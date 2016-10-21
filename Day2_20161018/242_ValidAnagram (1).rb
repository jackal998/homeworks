# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
	if s.length != t.length
		return false
	end
	hs={}
	leng = s.length
    for ls in 0..leng-1
    	if hs[s[ls]]
    		hs[s[ls]] +=1
    	else
    		hs[s[ls]] =1
    	end
    end
    for ts in 0..leng-1
    	if hs[t[ts]]
    		hs[t[ts]] -= 1
    		if hs[t[ts]] < 0
    			return false
    		end
    	else
    		return false
    	end
    end
    return true
end

s = "cat"
t = "tca"
puts is_anagram(s, t)