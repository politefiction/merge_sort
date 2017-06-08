def merge(arr1, arr2, sorted=[])
	if arr1.empty? and arr2.empty?
		sorted
	else
		if arr2.empty? or (arr1[0] < arr2[0] if arr1[0].is_a? Integer)
			sorted << arr1[0]
			arr1.shift
			merge(arr1, arr2, sorted)
		else
			sorted << arr2[0]
			arr2.shift
			merge(arr1, arr2, sorted)
		end
	end
end

def merge_sort(arr, x=nil, b=[])
	x ||= arr.length
	if arr.length == 1
		b << arr
	else arr.length > 1
		left = arr.slice(0..(arr.length/2 - 1))
		right = arr.slice(arr.length/2..-1)
		merge_sort(left, x, b)
		merge_sort(right, x, b)
	end

	if b.length == x && arr.length == x
		while b.length > 1
			i = 0
			while i < b.length
				b << merge(b[0], b[1])
				2.times { b.shift }
				i += 2
			end
		end
		b[0].inspect
	end
end


a = [8, 4, 1, 4, 6, 3, 9, 2, 7]
puts merge_sort(a)
