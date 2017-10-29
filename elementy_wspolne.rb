#Napisz funkcję, która jako argumenty przyjmuje dwie tablice i zwraca tablicę z elemantami wspólnymi podanych tablic.

#common_elements([1, 2, 3, 4, 5], [4, 5, 6]) #=> [4, 5] 
#common_elements(['a', 'b', 'c', 'd'], ['c','d', 'e']) #=> ['c', 'd'] 
#common_elements([14, 'apple', 1227, 'cat'], ['cat', 166, 541, 1227]) #=> ['cat', 1227]

def common_elements(a1,a2)
 a1&a2
end
 
 
print common_elements([1, 2, 3, 4, 5], [4, 5, 6])

#druga wersja z Array#include?

def common_elements2(a1,a2)
  a1.select{|x| x if a2.include?(x)}
end

print common_elements2([14, 'apple', 1227, 'cat'], ['cat', 166, 541, 1227])