#Napisz funkcję, która jako argument przyjmie tablicę liczb i zwróci sumę wszystkich elementów poza wartością najwyższą i najniższą.

#sum_array([1, 2, 3, 4])
#sum_array([12, 4, 0, -8])
#sum_array([12, 4])
#sum_array([120, 7, 145, -10, -15]) #=> 117

def sum_array(array)
 array.inject(:+)-(array.minmax {|x| x}).sum
end

print sum_array([120, 7, 145, -10, -15])