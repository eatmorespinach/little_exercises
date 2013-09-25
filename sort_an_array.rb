#Sort an array without using .sort

#what's a more proper name for "place"?

array = [3,20,7,40,1,3,2020202,3,48,48,1]
max_num = array.min
place = 0
array2 = []

array.length.times do
	array.each_with_index do |number, index|
		if number > max_num
			max_num = number
			place = index
		end
	end
	array2 << max_num
	array.delete_at(place)
	max_num = array.min
end

puts array2.inspect