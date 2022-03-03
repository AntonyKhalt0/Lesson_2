glass_letters = Hash.new
i = 1
'a'.upto('z') do |letter|
  glass_letters[letter] = i if letter =~ /[aeiou]/
  i += 1
end