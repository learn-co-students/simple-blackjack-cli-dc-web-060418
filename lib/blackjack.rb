def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card
  total += deal_card
  display_card_total(total)
  total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  choice = get_user_input
  if choice == "h"
    current_total += deal_card
  elsif choice == "s"
    #nothing happening here yet
  else
    invalid_command
    prompt_user
  end
  current_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  total = 0
  welcome
  total += initial_round
  until total > 21
    new_total = hit?(total)
    total = new_total
    display_card_total(total)
  end
  end_game(total)

end
    
