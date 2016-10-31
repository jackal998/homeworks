
# 內插 "#{物件}"
# puts 'you\'re smart'

p="0919-307-035"
if p =~ /(\d{4})-(\d{3})-(\d{3})/
	ext=$1
	city=$2
	num=$3
end
puts num	