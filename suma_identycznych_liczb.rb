# Napisz funkcję consecutives_sum , która dla trzymanej tablicy liczb obliczy sumę kolejnych
# liczb o tej samej wartości.
# Funkcja powinna zwracać tablice tych sum.

# Przykładowo:
# consecutives_sum([1, 4, 4, 4, 0, 4, 3, 3, 1]) #=> [1, 12, 0, 4, 6, 1]
# consecutives_sum([1, 1, 7, 7, 3])#=> [2, 14, 3]
# consecutives_sum([-5, -5, 7, 7, 12, 0])#=> [-10, 14, 12, 0]

def consecutives_sum(array)
	l=array.length
	final=[]
	accum = array[0]
	l.times do |x|
		
		 if array[x] == array[x+1]
		 	accum = accum + array[x]
		 else 
		 	final << accum
		 	accum = array[x+1]
		 end
	end
final
end

print consecutives_sum([-5, -5, 7, 7, 12, 0])