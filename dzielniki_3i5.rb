# Napisz metodę, która dla podanego argument n znajdzie wszystkie liczby całkowite w
# przedziale od 0 do n, które są podzielne przez 3 lub 5 i zwróci sumę tych liczb.
# Np:
# multiples(10) #=> 33
# multiples(20) #=> 98

def multiples(liczba)
	(0..liczba).to_a.select{|x| x if x%3==0 || x%5==0}.sum
end

print multiples(20)
