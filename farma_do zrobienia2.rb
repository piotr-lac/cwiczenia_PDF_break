# Zdefiniuj klasy Dog , Cat , Duck , Goose , każda z tych klas powinna dziedziczyć po klasie
# Animal , która posiada pustą metodę give_sound .
# Dla każdej z klas nadpisz metodę bazową give_sound , odpowiednio dla dźwięku
# poszczególnych zwierząt, przykłądowo dla psa wypisz 'woof! woof!' .
# Zdefiniuj klase Farm , która przyjmuje w metodzie 'initialize' tablicę obiektów Animals .
# Stwórz w klasie Farm metodę give_sounds , która wywołuje give_sound dla każdego obiektu z
# tablicy.

class Animal
	def give_sound
	end
end

class Dog < Animal
	def give_sound
		print "woof! woof!"
	end
end

class Cat < Animal
	def give_sound
		print "meow! meow!"
	end
end

class Duck < Animal
	def give_sound
		print "kwa! kwa!"
	end
end

class Goose < Animal
	def give_sound
		print "gę! gę!"
	end
end

class Farm
	def initialize
	end

	def give_sounds
	end
end

pies = Dog.new
kot = Cat.new
kaczka = Duck.new
ges = Goose.new

pies.give_sound


