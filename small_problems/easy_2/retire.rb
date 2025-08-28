print "What is your age? "
current_age = gets.to_i

print "At what age would you like to retire? "
retirement_age = gets.to_i

current_year = Time.new.year
time_to_retire = (retirement_age - current_age)

puts "\nIt's #{current_year}. You will retire in " \
     "#{current_year + time_to_retire}."
puts "You have only #{time_to_retire} years of work to go!"
