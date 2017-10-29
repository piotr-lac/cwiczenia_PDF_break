#Napisz funkcję, która dla otrzymanej tablicy liczb całkowitych zwraca tablicę tych samych liczb, ale o przeciwnej wartości.
#invert_array([1, 2, 3, 4, 5]) #=> [-1, -2, -3, -4, -5]

def invert_array(array)
	array.map{|x| -x}
end

print invert_array([1, 2, 3, 4, 5])