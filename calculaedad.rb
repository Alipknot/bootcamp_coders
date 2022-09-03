require 'date'
puts "Ingrese fecha cumpleanos formato d/m/y"
date_string = gets.chomp
date = Date.strptime(date_string, "%d/%m/%Y")
now = Time.now.utc.to_date
age = (now.year - date.year - ((now.month > date.month || (now.month == date.month && now.day >= date.day)) ? 0 : 1))
puts age
