fibonacci = Array.new(2) { |i| i }
loop do
  number_fibonacci = fibonacci[-2] + fibonacci[-1]
  break if number_fibonacci > 100
  fibonacci.push(number_fibonacci) 
end
