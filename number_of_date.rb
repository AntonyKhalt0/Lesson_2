months = {
  'January' => 31,
  'February' => 28,
  'March' => 31,
  'April' => 30,
  'May' => 31,
  'June' => 30,
  'Jule' => 31,
  'August' => 31,
  'September' => 30,
  'October' => 31,
  'November' => 30,
  'December' => 31
}

print "Введите число месяца: "
user_date = gets.chomp.to_i

print "Введите месяц: "
user_month = gets.chomp
user_month.capitalize!

print "Введите год: "
user_year = gets.chomp.to_i

if user_year % 4 == 0
  months['February'] = 29 if user_year % 100 != 0
  months['February'] = 29 if user_year % 100 == 0 && user_year % 400 == 0
end   

count_day = 0
months.each do |month, number_of_day|
  break if month.eql? user_month
  count_day += number_of_day
end

puts "Введенная дата - #{count_day + user_date} день с начала года."
