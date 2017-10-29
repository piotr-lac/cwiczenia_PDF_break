# Napisz program, który policzy ilość wystąpień poszczególnych słów w zadanym jako
# argument stringu.
# Zignoruj wielkość liter.
# Np:
# word_count('foo Foo bar bar Bar')#=> { "foo" => 2, "bar" => 3 }
# word_count('Losowy ciąg znaków ciąg') #=> { "losowy" => 1, "ciąg" => 2, "znaków" => 1}

def word_count(string)
	string.downcase.split.group_by {|x| x}.inject({}) { |h, (k, v)| h[k] = v.length; h } 
end

print word_count('Losowy ciąg znaków ciąg')
