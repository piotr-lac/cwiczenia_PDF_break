# Załóż, że '#' działa jak klawisz backspace w ciągu znaków. Oznacza to że string "a#bc#d"
# jest równy "bd" .
# "abc#d##c" jest równy "ac"
# "abc##d######" jest równy ""
# "######" jest równy ""
# "" jest równy ""
# Twoim zdaniem jest napisanie funkcji, która przetwarza string według powyższej reguły.

def back(string)
	a = string.chars
	x = a.index("#")
	while !x.nil?
		a.delete_at(x-1)
		a.delete_at(x-1)
		x = a.index("#")
	end
	a.join
end

print back("abc#d##c")