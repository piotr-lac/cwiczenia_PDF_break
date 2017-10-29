# Pangram to zdanie, w którym przynajmniej raz pojawia się każda litera alfabetu.
# Napisz metodę, która sprawdzi czy podany ciąg znaków jest pangramem dla języka
# polskiego.
# Np:
# pangram?('Dość błazeństw, żrą mój pęk luźnych fig') #=> true
# pangram?('Losowy ciąg znaków') #=> false

def pangram?(string)
	polskie_znaki = "ążźćśółęć".chars
	niepolskie_znaki = "qvx".chars
	uniwersalne_znaki = ("a".."z").to_a
	(uniwersalne_znaki + polskie_znaki - niepolskie_znaki - string.downcase.delete(" ").chars).empty?
end


print pangram?('Dość błazeństw, żrą mój pęk luźnych fig')