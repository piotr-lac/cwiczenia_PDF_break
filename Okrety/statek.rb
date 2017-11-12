class Statek

	attr_accessor :rzad, :wyzej, :nizej, :kolumna, :lewo, :prawo, :litera, :sam_statek, :otoczka
	@@lista_statkow = []

	def initialize(tablica,wielkosc)
		
		case wielkosc
			when 1 then zbuduj_1(tablica)
			when 2 then zbuduj_2(tablica)
			when 3 then zbuduj_3(tablica)
			when 4 then zbuduj_4(tablica)
		end
		@@lista_statkow << self

		
	end #koniec def initialize

	def self.lista_statkow
		@@lista_statkow
	end

	def zbuduj_1(tablica)
		@sam_statek = []
		@otoczka = []
		rzad = rand(9)
		wyzej = rzad - 1
		nizej = rzad + 1
		kolumna = rand(9)
		lewo = kolumna - 1
		prawo = kolumna + 1
		litera = tablica.litera


		if litera[rzad][kolumna] == nil 
			litera[rzad][kolumna] = " X"
			@sam_statek = [[rzad,kolumna]]

			litera[rzad][lewo] = " ." if lewo >= 0
			litera[rzad][prawo] = " ." if prawo <= 9

			litera[nizej][kolumna] = " ." if nizej <= 9 
			litera[nizej][lewo] = " ." if nizej <= 9 && lewo >= 0
			litera[nizej][prawo] = " ." if nizej <= 9 && prawo <= 9

			litera[wyzej][kolumna] = " ." if wyzej >= 0
			litera[wyzej][lewo] = " ." if wyzej >= 0 && lewo >= 0
			litera[wyzej][prawo] = " ." if wyzej >= 0 && prawo <= 9
			@otoczka = [[rzad,lewo],[rzad,prawo],[nizej,kolumna],[nizej,lewo],[nizej,prawo],[wyzej,kolumna],[wyzej,lewo],[wyzej,prawo]]
		else
			zbuduj_1(tablica)
		end
	end #koniec def zbuduj_1

	def zbuduj_2(tablica)
			@sam_statek = []
			@otoczka = []
			uklad = rand(2) 						
			rzad = rand(9) if uklad == 1
			rzad = rand(10) if uklad == 0
			wyzej = rzad - 1
			nizej = rzad + 1 if uklad == 0
			nizej = rzad + 2 if uklad == 1
			kolumna = rand(10) if uklad == 1
			kolumna = rand(9) if uklad == 0
			lewo = kolumna - 1
			prawo = kolumna + 1 if uklad == 1
			prawo = kolumna + 2 if uklad == 0
			litera = tablica.litera

			if uklad == 1
				if litera[rzad][kolumna] == nil && litera[rzad+1][kolumna] == nil #na razie dla 1
					litera[rzad][kolumna] = " X"
					@sam_statek << [rzad,kolumna]
					litera[rzad+1][kolumna] = " X"
					@sam_statek << [rzad+1,kolumna]

					litera[rzad][lewo] = " ." if lewo >= 0
					litera[rzad+1][lewo] = " ." if lewo >= 0
					litera[rzad][prawo] = " ." if prawo <= 9
					litera[rzad+1][prawo] = " ." if prawo <= 9

					litera[nizej][kolumna] = " ." if nizej <= 9 
					litera[nizej][lewo] = " ." if nizej <= 9 && lewo >= 0
					litera[nizej][prawo] = " ." if nizej <= 9 && prawo <= 9

					litera[wyzej][kolumna] = " ." if wyzej >= 0
					litera[wyzej][lewo] = " ." if wyzej >= 0 && lewo >= 0
					litera[wyzej][prawo] = " ." if wyzej >= 0 && prawo <= 9
					@otoczka = [[rzad,lewo],[rzad+1,lewo],[rzad,prawo],[rzad+1,prawo],[nizej,kolumna],[nizej,lewo],[nizej,prawo],[wyzej,kolumna],[wyzej,lewo],[wyzej,prawo]]
				else
					zbuduj_2(tablica)
				end # koniec if dla uklad = 1
			else # czyli kiedy uklad = 0
				if litera[rzad][kolumna] == nil && litera[rzad][kolumna+1] == nil #tutaj dla uklad = 0
					litera[rzad][kolumna] = " X"
					@sam_statek << [rzad,kolumna]
					litera[rzad][kolumna+1] = " X"
					@sam_statek << [rzad,kolumna+1]

					litera[rzad][lewo] = " ." if lewo >= 0
					litera[rzad][prawo] = " ." if prawo <= 9
					

					litera[nizej][kolumna] = " ." if nizej <= 9 
					litera[nizej][kolumna+1] = " ." if nizej <= 9 
					litera[nizej][lewo] = " ." if nizej <= 9 && lewo >= 0
					litera[nizej][prawo] = " ." if nizej <= 9 && prawo <= 9

					litera[wyzej][kolumna] = " ." if wyzej >= 0
					litera[wyzej][kolumna+1] = " ." if wyzej >= 0
					litera[wyzej][lewo] = " ." if wyzej >= 0 && lewo >= 0
					litera[wyzej][prawo] = " ." if wyzej >= 0 && prawo <= 9
					@otoczka = [[rzad,lewo],[rzad,prawo],[nizej,kolumna],[nizej,kolumna+1],[nizej,lewo],[nizej,prawo],[wyzej,kolumna],[wyzej,kolumna+1],[wyzej,lewo],[wyzej,prawo]]
				else
					zbuduj_2(tablica)
				end # koniec if dla uklad = 0
			end #konic glownego if
		end #koniec def zbuduj_2

	def zbuduj_3(tablica)
				@sam_statek = []
				@otoczka = []
				uklad = rand(2)						
				rzad = rand(8) if uklad == 1 #podnosimy rzad startu
				rzad = rand(10) if uklad == 0
				wyzej = rzad - 1
				nizej = rzad + 1 if uklad == 0
				nizej = rzad + 3 if uklad == 1
				kolumna = rand(10) if uklad == 1
				kolumna = rand(8) if uklad == 0 #przesuwamy kolumne startu
				lewo = kolumna - 1
				prawo = kolumna + 1 if uklad == 1
				prawo = kolumna + 3 if uklad == 0
				litera = tablica.litera

				if uklad == 1
					if litera[rzad][kolumna] == nil && litera[rzad+1][kolumna] == nil && litera[rzad+2][kolumna] == nil #na razie dla 1
						litera[rzad][kolumna] = " X"
						litera[rzad+1][kolumna] = " X"
						litera[rzad+2][kolumna] = " X"
						@sam_statek = [[rzad,kolumna],[rzad+1,kolumna],[rzad+2,kolumna]]

						litera[rzad][lewo] = " ." if lewo >= 0
						litera[rzad+1][lewo] = " ." if lewo >= 0
						litera[rzad+2][lewo] = " ." if lewo >= 0
						litera[rzad][prawo] = " ." if prawo <= 9
						litera[rzad+1][prawo] = " ." if prawo <= 9
						litera[rzad+2][prawo] = " ." if prawo <= 9

						litera[nizej][kolumna] = " ." if nizej <= 9 
						litera[nizej][lewo] = " ." if nizej <= 9 && lewo >= 0
						litera[nizej][prawo] = " ." if nizej <= 9 && prawo <= 9

						litera[wyzej][kolumna] = " ." if wyzej >= 0
						litera[wyzej][lewo] = " ." if wyzej >= 0 && lewo >= 0
						litera[wyzej][prawo] = " ." if wyzej >= 0 && prawo <= 9
						@otoczka = [[rzad,lewo],[rzad+1,lewo],[rzad+2,lewo],[rzad,prawo],[rzad+1,prawo],[rzad+2,prawo],
						[nizej,kolumna],[nizej,lewo],[nizej,prawo],[wyzej,kolumna],[wyzej,lewo],[wyzej,prawo]]
					else
						zbuduj_3(tablica)
					end # koniec if dla uklad = 1
				else # czyli kiedy uklad = 0
					if litera[rzad][kolumna] == nil && litera[rzad][kolumna+1] == nil && litera[rzad][kolumna+2] == nil #tutaj dla uklad = 0
						litera[rzad][kolumna] = " X"
						litera[rzad][kolumna+1] = " X"
						litera[rzad][kolumna+2] = " X"
						@sam_statek = [[rzad,kolumna],[rzad,kolumna+1],[rzad,kolumna+2]]

						litera[rzad][lewo] = " ." if lewo >= 0
						litera[rzad][prawo] = " ." if prawo <= 9
						

						litera[nizej][kolumna] = " ." if nizej <= 9 
						litera[nizej][kolumna+1] = " ." if nizej <= 9 
						litera[nizej][kolumna+2] = " ." if nizej <= 9 
						litera[nizej][lewo] = " ." if nizej <= 9 && lewo >= 0
						litera[nizej][prawo] = " ." if nizej <= 9 && prawo <= 9

						litera[wyzej][kolumna] = " ." if wyzej >= 0
						litera[wyzej][kolumna+1] = " ." if wyzej >= 0
						litera[wyzej][kolumna+2] = " ." if wyzej >= 0
						litera[wyzej][lewo] = " ." if wyzej >= 0 && lewo >= 0
						litera[wyzej][prawo] = " ." if wyzej >= 0 && prawo <= 9
						@otoczka = [[rzad,lewo],[rzad,prawo],[nizej,kolumna],[nizej,kolumna+1],[nizej,kolumna+2],[nizej,lewo],[nizej,prawo],
						[wyzej,kolumna],[wyzej,kolumna+1],[wyzej,kolumna+2],[wyzej,lewo],[wyzej,prawo]]
					else
						zbuduj_3(tablica)
					end # koniec if dla uklad = 0
				end #konic glownego if
			end #koniec def zbuduj_3

	def zbuduj_4(tablica)
					@sam_statek = []
					@otoczka = []
					uklad = rand(2) 						
					rzad = rand(7) if uklad == 1 #podnosimy rzad startu
					rzad = rand(10) if uklad == 0
					wyzej = rzad - 1
					nizej = rzad + 1 if uklad == 0
					nizej = rzad + 4 if uklad == 1
					kolumna = rand(10) if uklad == 1
					kolumna = rand(7) if uklad == 0 #przesuwamy kolumne startu
					lewo = kolumna - 1
					prawo = kolumna + 1 if uklad == 1
					prawo = kolumna + 4 if uklad == 0
					litera = tablica.litera

					if uklad == 1
						if litera[rzad][kolumna] == nil && litera[rzad+1][kolumna] == nil && litera[rzad+2][kolumna] == nil#na razie dla 1
							litera[rzad][kolumna] = " X"
							litera[rzad+1][kolumna] = " X"
							litera[rzad+2][kolumna] = " X"
							litera[rzad+3][kolumna] = " X"
							@sam_statek = [[rzad,kolumna],[rzad+1,kolumna],[rzad+2,kolumna],[rzad+3,kolumna]]

							litera[rzad][lewo] = " ." if lewo >= 0
							litera[rzad+1][lewo] = " ." if lewo >= 0
							litera[rzad+2][lewo] = " ." if lewo >= 0
							litera[rzad+3][lewo] = " ." if lewo >= 0
							litera[rzad][prawo] = " ." if prawo <= 9
							litera[rzad+1][prawo] = " ." if prawo <= 9
							litera[rzad+2][prawo] = " ." if prawo <= 9
							litera[rzad+3][prawo] = " ." if prawo <= 9

							litera[nizej][kolumna] = " ." if nizej <= 9 
							litera[nizej][lewo] = " ." if nizej <= 9 && lewo >= 0
							litera[nizej][prawo] = " ." if nizej <= 9 && prawo <= 9

							litera[wyzej][kolumna] = " ." if wyzej >= 0
							litera[wyzej][lewo] = " ." if wyzej >= 0 && lewo >= 0
							litera[wyzej][prawo] = " ." if wyzej >= 0 && prawo <= 9
							@otoczka = [[rzad,lewo],[rzad+1,lewo],[rzad+2,lewo],[rzad+3,lewo],[rzad,prawo],[rzad+1,prawo],[rzad+2,prawo],[rzad+3,prawo],
						[nizej,kolumna],[nizej,lewo],[nizej,prawo],[wyzej,kolumna],[wyzej,lewo],[wyzej,prawo]]
						else
							zbuduj_4(tablica)
						end # koniec if dla uklad = 1
					else # czyli kiedy uklad = 0
						if litera[rzad][kolumna] == nil && litera[rzad][kolumna+1] == nil && litera[rzad][kolumna+2] == nil #tutaj dla uklad = 0
							litera[rzad][kolumna] = " X"
							litera[rzad][kolumna+1] = " X"
							litera[rzad][kolumna+2] = " X"
							litera[rzad][kolumna+3] = " X"
							@sam_statek = [[rzad,kolumna],[rzad,kolumna+1],[rzad,kolumna+2],[rzad,kolumna+3]]

							litera[rzad][lewo] = " ." if lewo >= 0
							litera[rzad][prawo] = " ." if prawo <= 9
							

							litera[nizej][kolumna] = " ." if nizej <= 9 
							litera[nizej][kolumna+1] = " ." if nizej <= 9 
							litera[nizej][kolumna+2] = " ." if nizej <= 9 
							litera[nizej][kolumna+3] = " ." if nizej <= 9 
							litera[nizej][lewo] = " ." if nizej <= 9 && lewo >= 0
							litera[nizej][prawo] = " ." if nizej <= 9 && prawo <= 9

							litera[wyzej][kolumna] = " ." if wyzej >= 0
							litera[wyzej][kolumna+1] = " ." if wyzej >= 0
							litera[wyzej][kolumna+2] = " ." if wyzej >= 0
							litera[wyzej][kolumna+3] = " ." if wyzej >= 0
							litera[wyzej][lewo] = " ." if wyzej >= 0 && lewo >= 0
							litera[wyzej][prawo] = " ." if wyzej >= 0 && prawo <= 9
							@otoczka = [[rzad,lewo],[rzad,prawo],[nizej,kolumna],[nizej,kolumna+1],[nizej,kolumna+2],[nizej,kolumna+3],[nizej,lewo],[nizej,prawo],
						[wyzej,kolumna],[wyzej,kolumna+1],[wyzej,kolumna+2],[wyzej,kolumna+3],[wyzej,lewo],[wyzej,prawo]]
						else
							zbuduj_4(tablica)
						end # koniec if dla uklad = 0
					end #konic glownego if
				end #koniec def zbuduj_4

end #koniec classy

