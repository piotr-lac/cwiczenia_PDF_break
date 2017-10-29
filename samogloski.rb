#Napisz funkcję obliczającą ilość samogłosek w podanym ciągu znaków. Jako samogłoski uznajemy: a, e, i, o, u oraz y

#vowel_count("test") #=> 1 
#vowel_count("foobar") #=> 3

def vowel_count(string)
	
	string.downcase.count "aeiou"
	
end