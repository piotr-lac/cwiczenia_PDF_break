# Napisz funkcję, która dokona konwersji liczby w zapisie arabskim na liczbę w zapisie
# rzymskim.
# Funkcja powinna byc w stanie skonwertować liczby od 1 do 3000.
# to_roman(5)#=> 'V'
# to_roman(37) #=> 'XXXVII'
# to_roman(924) #=> 'CMXXIV'

def to_roman(liczba)

	h={
		1 => "I",
   2 => "II",
   3 => "III",
   4 => "IV",
   5 => "V",
   6 => "VI",
   7 => "VII",
   8 => "VIII",
   9 => "IX",
  10 => "X",
  20 => "XX",
  30 => "XXX",
  40 => "XL",
  50 => "L",
  60 => "LX",
  70 => "LXX",
  80 => "LXXX",
  90 => "XC",
  100 => "C",
  200 => "CC",
  300 => "CCC",
  400 => "CD",
  500 => "D",
  600 => "DC",
  700 => "DCC",
  800 => "DCCC",
  900 => "CM",
  1000 => "M",
  2000 => "MM",
  3000 => "MMM",
	}

  
	array=liczba.to_s.chars.reverse.map(&:to_i)

	i=1
	array.length.times {|x| array[x] = array[x]*i;	i*=10}
	array.reverse!.map{|x| h[x]}.join
	
end

print to_roman(1984)