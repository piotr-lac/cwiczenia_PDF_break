# Zasada komplementarności DNA mówi, że znając sekwencję pojedyńczego łańcucha DNA możemy wywnioskować sekwencję jego sąsiedniej nici.
# Wynika to z faktu, iż zasady azotowe, z których DNA jest zbudowane łączą się w pary zawsze w ten sam sposób, to znaczy Adenina (A) z Tyminą (T), a Cytozyna © z Guaniną (G).
# Napisz funckję, która przyjmie ciąg znaków reprezentujący sekwencję DNA i zwróci sekwencję komplementarną.

def complementary_DNA(string)

string.gsub(/[ATCG]/, 'A' => 'T', 'T' => 'A', 'C' => 'G', 'G' => 'C')
end


print complementary_DNA("ATTACG")
