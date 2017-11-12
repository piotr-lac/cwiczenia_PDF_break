require "./tablica.rb"
require "./statek.rb"

class Gra

attr_accessor :pusta, :pelna, :cel
	
	def initialize
		@pusta = Tablica.new
		@pelna = Tablica.new
		
		4.times do
			Statek.new(pelna,1)
		end

		3.times do
			Statek.new(pelna,2)
		end

		2.times do
			Statek.new(pelna,3)
		end

		Statek.new(pelna,4)

		pusta.rysuj
	end #end od def initialize

	def ognia(a,b)
		if @pelna.litera[a][b] == " X"
			@pusta.litera[a][b] = " X"
			print "Trafiony "
			szukany = (Statek.lista_statkow.select {|x| x if x.sam_statek[0] == [a,b] || x.sam_statek[1] == [a,b] ||
			 x.sam_statek[2] == [a,b] || x.sam_statek[3] == [a,b]})[0]
			szukany.sam_statek.delete([a,b])
			if szukany.sam_statek.length == 0
				puts "Zatopiony !!!" 
				szukany.otoczka.each {|x| pusta.litera[x[0]][x[1]]=" ."}
			end
			puts
			
			else 
			puts "Pudło !"
			@pusta.litera[a][b] = " ."
			
		end
		@pusta.rysuj
	end

end #end od classy

gra = Gra.new

puts "podaj nr rzędu (1..10)"

a="10"
q=a.to_i

puts "podaj nr kolumny (A..J)"

b="a"

case b
	when "a" then w = 0
	when "b" then w = 1
	when "c" then w = 2
	when "d" then w = 3
	when "e" then w = 4
	when "f" then w = 5
	when "g" then w = 6
	when "h" then w = 7
	when "j" then w = 8
	when "i" then w = 9
end
p q
p w







