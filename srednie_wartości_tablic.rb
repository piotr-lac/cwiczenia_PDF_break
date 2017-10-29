# Napisz funkcję, która przyjmie dowolną liczbę tablic (o tej samej długości) i zwróci jedną
# tablicę składającą się z wartości średnich elementów na poszczególnych indeksach
# przyjętych tablic.

# avg_array([1, 3, 5], [3, 5, 7]) #=> [2, 4, 6]
# avg_array([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17]) #=> [8, 19.75, 11.25, 13.5]

def avg_array(*arrays)
	liczba = arrays.length
	final = []
	zipped = arrays[0]
	
	(liczba-1).times do |x|
		zipped = zipped.zip(arrays[x+1])
	end
	
	zipped.flatten!

	loop do 
	final << (zipped.take(liczba)).sum/liczba.to_f
	zipped = zipped.drop(liczba)
	break if zipped.empty?
	end

final

end

print avg_array([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17])