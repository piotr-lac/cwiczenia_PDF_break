# Zadanie polega na napisaniu funkcji decode_morse , która dla otrzymanego kodu, zwórci
# jego odszyfrowaną wersję.
# Przykładowo:
# decode_morse('.... . .-.. .-.. --- .-- --- .-. .-.. -..') #=> "HELLOWORLD"

def decode_morse(string)
	a=string.split(" ")
	h={
		a: ".-",
		b: "-...",
		c: "-.-.",
		d: "-..",
		e: ".",
		f: "..-.",
		g: "--.",
		h: "....",
		i: "..",
		j: ".---",
		k: "-.-",
		l: ".-..",
		m: "--",
		n: "-.",
		o: "---",
		p: ".--.",
		q: "--.-",
		r: ".-.",
		s: "...",
		t: "-",
		u: "..-",
		v: "...-",
		w: ".--",
		x: "-..-",
		y: "-.--",
		z: "--.."
		}

h.inject({}){ |hash, (k, v)| hash.merge( k.to_s => v )  }
a.map{|x| h.key(x).upcase}.join
end


print decode_morse('.... . .-.. .-.. --- .-- --- .-. .-.. -..')