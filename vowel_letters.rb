vowel_letters = {}
'a'.upto('z').with_index { |letter, i| vowel_letters[letter] = i + 1 if letter =~ /[aeiou]/ }
