class Tablica

	attr_accessor :literki, :cyferki, :litera, :a, :b, :c, :d, :e, :f, :g, :h, :i, :j

	def initialize
		@literki = ("A".."J").to_a
		@cyferki = ("1".."10").to_a

		a = Array.new(10)
		b = Array.new(10)
		c = Array.new(10)
		d = Array.new(10)
		e = Array.new(10)
		f = Array.new(10)
		g = Array.new(10)
		h = Array.new(10)
		i = Array.new(10)
		j = Array.new(10)

		@litera = [a,b,c,d,e,f,g,h,i,j]
	end

	def rysuj

		11.times do 									# pierwsza linia
			print "+---"
		end
		puts "+" 											# ostatni +
		print "|   "									#pierwsza kreska |
		
		10.times do |x|								# linia z literkami
			print "| #{@literki[x]} "
		end
		puts "|"											# ostatnia kreska |
		
		11.times do										# linia pod literkami
			print "+---"
		end
		puts "+"

		10.times do |y|								#liczba rzedow pod literkami
			print y == 9 ?  "| #{@cyferki[y]}" : "| #{@cyferki[y]} " #pionowa kolumna z cyframi
			
			10.times do	|z|								# linie pionowe - komorki
				print litera[y][z].nil? ? "|#{@litera[y][z]}   " : "|#{@litera[y][z]} "
			end
			puts "|"										# ostatnia kreska |
			11.times do									# linie poziomie +---+
				print "+---"
			end
			puts "+"										# ostatni +
		end
	end #koniec def rysuj
end #koniec classy

