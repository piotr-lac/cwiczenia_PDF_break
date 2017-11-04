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
		"woof! woof!"
	end
end

class Cat < Animal
	def give_sound
		"meow! meow!"
	end
end

class Duck < Animal
	def give_sound
		"kwa! kwa!"
	end
end

class Goose < Animal
	def give_sound
		"gę! gę!"
	end
end

class Farm
	def initialize(animals)
		@animals=animals
	end

	def give_sounds
		@animals.each {|x| puts x.give_sound}
	end
end

pies = Dog.new
kot = Cat.new
kaczka = Duck.new
ges = Goose.new


animals = [pies,kot,kaczka,ges]

farma = Farm.new(animals)
farma.give_sounds