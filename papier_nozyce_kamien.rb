# Zaimplementuj funkcję, która wypisze, który z graczy wygrywa w grze papier, kamień,
# nożyce. Funkcja powinna przyjmować dwa argumenty odpowiadające wyborom graczy i
# działać w następujący sposób:
# rps('scissors', 'paper') #=> 'Gracz 1 wygrywa'
# rps('rock', 'paper') #=> 'Gracz 2 wygrywa'
# rps('scissors', 'scissors') #=> 'Remis'

def rps(a,b)
	jeden = "Gracz 1 wygrywa"
	dwa = "Gracz 2 wygrywa"
	trzy = "Remis"

	case a
	when "scissors"
	 if b == "rock"
	 	print dwa
	 elsif b == a
	 	print trzy
	 else
	 	print jeden
	 end
	when "rock"
		if b == "scissors"
	 	print jeden
	 elsif b == a
	 	print trzy
	 else
	 	print dwa
	 end
	when "paper"
		if b == "scissors"
	 	print dwa
	 elsif b == a
	 	print trzy
	 else
	 	print jeden
	 end
	end
end

print rps("paper","rock")