
def merge_sort(arr, b=[])
	if arr.length == 1 && arr.nil? == false
		b << arr[0] if b.empty? or arr[0] >= b[-1]
		return b.insert(0, arr[0]) if arr[0] < b[0]
		b.each_with_index do |n, index|
			return b.insert(index, arr[0]) if arr[0] < n
		end
	else
		left = arr.slice(0..(arr.length/2 - 1))
		right = arr.slice(arr.length/2..-1)
		merge_sort(left, b)
		merge_sort(right, b)
	end
	b.inspect
end


a = [8, 4, 1, 4, 6, 3, 9, 2]
puts a.inspect
puts merge_sort(a)
puts
c = [rand(1..10), rand(1..10), rand(1..10), rand(1..10), rand(1..10), rand(1..10), rand(1..10), rand(1..10)]
puts c.inspect
puts merge_sort(c)