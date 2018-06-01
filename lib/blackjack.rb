def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  
  sum = deal_card + deal_card

  display_card_total(sum)

  return sum
end

def hit?(current_card_total)
  
  prompt_user
  response = get_user_input

  if response == "s"
    return current_card_total
  elsif response == "h"
    num = deal_card
    return num + current_card_total
  else
    invalid_command
    prompt_user
  end
  
  return current_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

  welcome  
  total = initial_round
  
  while total < 21
    total = hit?(total)
    total = display_card_total(total)
  end
  
  end_game(total)

end