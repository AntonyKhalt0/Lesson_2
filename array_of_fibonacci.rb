fibonacci = Array.new(2) { |i| i }
i = 2
loop do
  number_fibonacci = fibonacci[i - 2] + fibonacci[i - 1]
  break if number_fibonacci > 100
  fibonacci.push(number_fibonacci) 
  i += 1
end