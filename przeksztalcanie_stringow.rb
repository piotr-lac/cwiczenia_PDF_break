#Napisz funkcję accum, która działa w następujący sposób:
#accum("abcd") #=> "A-Bb-Ccc-Dddd"
#accum("RqaEzty") #=> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy" accum("cwAt") #=> "C-Ww-Aaa-Tttt"

#Ruby Style !!! :))

def accum(string)
	string.split("").collect!.with_index {|x,i| (x*(i+1)).capitalize}.join("-")
end

print accum("abcd")