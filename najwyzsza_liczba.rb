# Napisz funkcję, ktora przyjmie liczbę całkowitą i pozamienia jej cyfry miejscami w taki
# sposób, aby utworzyć jak najwyższą liczbę.
# Np:
# highest_number(132) #=> 321
# highest_number(1464) #=> 6441
# highest_number(165423) #=> 654321

def highest_number(liczba)
	liczba.to_s.split("").sort.reverse.join.to_i
end

print highest_number(165423)