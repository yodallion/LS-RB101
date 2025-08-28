VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VICTORY_CONDITIONS = { rock: ['scissors', 'lizard'],
                       paper: ['rock', 'spock'],
                       scissors: ['paper', 'lizard'],
                       lizard: ['paper', 'spock'],
                       spock: ['rock', 'scissors'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  VICTORY_CONDITIONS[first.to_sym].include? second
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  player_score = 0
  computer_score = 0
  prompt('"First to three wins!"')
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      answer = Kernel.gets().chomp()
      choice = VALID_CHOICES.find { |x| x.start_with?(answer) }

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice} ")

    player_score += 1 if win?(choice, computer_choice)
    computer_score += 1 if win?(computer_choice, choice)

    display_results(choice, computer_choice)
    prompt("Player: #{player_score}, Computer: #{computer_score}")

    break if player_score >= 3 || computer_score >= 3
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
