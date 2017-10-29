#Napisz metodę initials, która wypisuje inicjały osoby na podstawie jej pełnego imienia. Wszystkie znaki inicjałów powinny być pisane z dużej litery.

#initials('Jan Kozlowski') #=> 'JK' 
#initials('Jan Krzysztof Rakoczy') #=> 'JKR' 
#initials('marcin nowak') #=> 'MN'

def initials(string)
	string.split(" ").map{|x| x=x[0].capitalize}.join
	
end

print initials("koko Loko coko")