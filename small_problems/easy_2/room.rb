# LS addition
# SQMETERS_TO_SQFEET = 10.7639 <== good practice to avoid magic numbers

puts "Enter the length of the room in meters:"
length = gets
puts "Enter the width of the room in meters:"
width = gets

area_meters = (length.to_f * width.to_f).round(2)
area_feet = (area_meters * 10.7639).round(2)

puts "The area of the room is #{area_meters} " \
     "square meters (#{area_feet} square feet)."
