#Napisz funkcję, która znajdzie i zwróci środkowy znak w stringu. Jeśli długość stringa jest liczbą parzystą zwróć dwa środkowe znaki.
#middle("abc") #=> "b"
# middle("middle") #=> "dd"
# middle("tesTing") #=> "T"

def middle(string)
	a=string.size/2
	return string[a-1]<<string[a] if string.size.even?
	string[a]
	
end

print middle("tesTing")
	