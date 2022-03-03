shopping_cart = Hash.new

loop do
  print "Введите название товара (или стоп для выхода): "
  product = gets.chomp
  product.capitalize!
  break if product == "Стоп"

  print "Введите цену за единицу товара: "
  price = gets.chomp.to_i

  print "Введите количество купленного товара: "
  quantity = gets.chomp.to_f

  shopping_cart[product] = { price: price, quantity: quantity }
end

total_amount = 0

shopping_cart.each do |product, purchase|
  shopping_cart[product][:total_amount_product] = purchase[:price] * purchase[:quantity]
  total_amount += shopping_cart.dig(product, :total_amount_product)
end

shopping_cart.each do |product, purchase|
  puts "Товар: #{product}, количество товара: #{purchase[:quantity]}, " \
  "цена за единицу товара: #{purchase[:price]}, общая стоимость товара: #{purchase[:total_amount_product]}"
end
puts "Общая стоимость покупки: #{total_amount}"