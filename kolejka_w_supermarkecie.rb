# W supermarkecie ludzie ustawiają się w jedną długą kolejkę i proszeni są kolejno do
# wolnej kasy.
# Twoim zadaniem jest napisać funkcję queue_time , która przyjmuje:
# • tablicę liczb całkowitych - czasy obsługi poszczególnych klientów
# • liczbę całkowitą - ilość dostępnych kas. Funkcja powinna zwracać czas potrzebny na
# obsłużenie wszystkich klientów supermarketu.
# Pamiętaj że:
# - istnieje tylko jedna kolejka
# - kolejność klientów w kolejce nie zmienia się
# - pierwsza osoba w kolejce podchodzi do pierwszej wolnej kasy

# queue_time([5,3,4], 1) #=> 12
# queue_time([10, 2, 3, 3], 2) #=> 10
# queue_time([2, 3, 10], 2) #=> 12

def queue_time(array, p)
	kasy = Array.new(p,0)

	array.length.times do |x|
		szybka_kasa = kasy.index(kasy.min)
		kasy[szybka_kasa] = (kasy[szybka_kasa]+array[x])
	end

	kasy.max
end


print queue_time([2, 3, 10], 2)