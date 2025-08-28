consecutive_numbers = []
sum = 0
product = 1

puts ">> Please enter an integer greater than 0:"
num = gets.to_i

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp

  if choice == 's'
    1.upto(num) { |i| consecutive_numbers << i }
    consecutive_numbers.each { |i| sum += i }

    puts "The sum of the integers between 1 " \
         "and #{num} is #{sum}."
    break
  elsif choice == 'p'
    1.upto(num) { |i| consecutive_numbers << i }
    consecutive_numbers.each { |i| product *= i }

    puts "The product of the integers between 1 " \
         "and #{num} is #{product}."
    break
  else
    puts ">> Error. Invalid input"
  end
end


# LS Solution
def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end
