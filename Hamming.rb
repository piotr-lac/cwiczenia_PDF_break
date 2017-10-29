# Odległość Hamminga
# Odległóść Hamminga to “wprowadzona przez Richarda Hamminga miara odmienności
# dwóch ciągów o takiej samej długości, wyrażająca liczbę miejsc (pozycji), na których te
# dwa ciągi się różnią” (Wikipedia)
# czyli:
# • odległość Hamminga dla ciągów 'aaa' i 'aab' wynosi 1.
# • odległość Hamminga dla ciągów 'aaabbb' i 'abaaba' wynosi 3.
# Napisz funkcję, która jako argumenty przyjmie dwa stringi i zwróci ich odległość
# Hamminga. Jeśli podane stringi nie są tej samej długości niech zwróci nil .
# np:hamming_distance('1234', '1235') 1
# hamming_distance('GAGCCT', 'CATCGT') 3
# hamming_distance('1234', '12345') nil
# hamming_distance('123', 'foobar') nil

def hamming_distance(a,b)
 return a.size != b.size ? nil : a.chars.zip(b.chars).select{|x| x if x[0] != x[1]}.length
end

print hamming_distance('GAGCCT', 'CATCGT')