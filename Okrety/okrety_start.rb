require "./tablica.rb"
require "./statek.rb"

class Gra

attr_accessor :pusta, :pelna
	
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
		system "clear"
		pusta.rysuj

	end #end od def initialize

	def ognia(a,b)
		system "clear"
		if @pelna.litera[a][b] == " X"
			@pusta.litera[a][b] = " X"
			print "Trafiony "
			szukany = (Statek.lista_statkow.select {|x| x if x.sam_statek[0] == [a,b] || x.sam_statek[1] == [a,b] ||
			 x.sam_statek[2] == [a,b] || x.sam_statek[3] == [a,b]})[0]
			szukany.sam_statek.delete([a,b])
			
			if szukany.sam_statek.length == 0
				puts "Zatopiony !!!"
				szukany.otoczka.each {|x| pusta.litera[x[0]][x[1]]=" ." if x[0] >=0 && x[1] >=0 && x[0] < 10 && x[1] < 10}
				Statek.lista_statkow.delete(szukany)
				print "Zostało Ci jeszcze #{Statek.lista_statkow.count} statków do zatopienia"
			end
			puts
			
			else 
			puts "Pudło !"
			@pusta.litera[a][b] = " ."
			
		end
		if Statek.lista_statkow.count > 0
			@pusta.rysuj 
		else
			system "clear"
			@pusta.rysuj 
			puts "Koniec GRY !!!" 
		end
	end
end #end od classy

gra = Gra.new


loop do 
	puts "podaj nr rzędu (1..10) oraz nr kolumny (A..J), lub wpisz exit aby wyjsc z gry"
	odp = gets.chomp
	break if odp == "exit"
	odp = odp.chars
	if odp.length >=4 || odp.length < 2
		puts "Niewłaściwa liczba znaków"
	else
		if odp[0].to_i == 0 || !("a".."j").to_a.include?(odp[-1].downcase)
			puts "ŹLE WPISANO !!! podaj najpierw liczbe: nr rzedu (1..10) a potem litere oznaczajaca kolumne (A..J) np. 1a"
		else
			b = odp[-1].downcase
			a = odp[0,2].join.to_i-1 if odp.length == 3
			a = odp[0].to_i-1 if odp.length == 2
			case b
				when "a" then b = 0
				when "b" then b = 1
				when "c" then b = 2
				when "d" then b = 3
				when "e" then b = 4
				when "f" then b = 5
				when "g" then b = 6
				when "h" then b = 7
				when "i" then b = 8
				when "j" then b = 9
			end
			gra.ognia(a,b)
		end
	end 
end #koniec loop












