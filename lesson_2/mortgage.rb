def format_data(loan, duration, interest)
  formatted_loan = loan.gsub(/\$|,/, '').to_f

  formatted_duration = (duration.to_f * 12.0)

  formatted_interest = interest.gsub('%', '').to_f / (100.0 * 12.0)

  return formatted_loan, formatted_duration, formatted_interest
end

puts "Hello and welcome to the wondrous loan calculator!
My sole purpose in life is to calculate the total amount of " \
"money you'll be paying back every month to work off your loan! " \
"(Amazing!!) \nI'll just need to ask you a few questions before I can " \
"calculate your monthly payment and you can realize just how screwed you are!! (YAY!)
Are you ready?"

input = gets.chomp

if input.downcase.start_with?('y')
  print "Alright then! So "
else
  puts "Too bad!"
  print "So tell me, "
end

loop do
  puts "exactly how much did you borrow?
       \r(Please express this amount in the format '$###,###,###', i.e., $200, $10,000, etc)"
  loan_amount = gets.chomp
  puts "Dear god, that's a lot!! (For you at least)
       \rHow many years do you think it will take for you to pay all that off?
       \r(Simply enter a single whole number)"
  loan_duration = gets.chomp
  puts "Very optimistic! I'm rooting for ya, kid!
       \rFinally, what's the current annual interest rate on your loan?
       \r(Format this like '#%', i.e, 15%, 4%, etc)"
  interest_rate = gets.chomp
  puts "Let's hope it stays that way! As long as your bank doesn't hate you, I'm sure it will.
       \rThey don't hate you, right?"
  gets.chomp
  puts "Who even cares!!\nNow let's calculate that monthly payment"

  loan_amount, loan_duration, interest_rate = format_data(loan_amount, loan_duration, interest_rate)
  monthly_payment = loan_amount * (interest_rate / (1 - ((1 + interest_rate)**(-loan_duration))))

  puts "It looks like your monthly payment is around $#{monthly_payment.round}!\nHow do you feel?"
  mood = gets.chomp
  puts "I'd feel pretty #{mood} too if I was rube like you!
       \rNow, do you need me to calculate any other loan payments for you?"
  input = gets.chomp
  if input.downcase.start_with?('y')
    puts "Wait... seriously? You took out another loan? Jesus Christ, kid"
    print "Well, it's your funeral! Now then, "
  else
    puts "I'll see ya next time!"
    break
  end
end
