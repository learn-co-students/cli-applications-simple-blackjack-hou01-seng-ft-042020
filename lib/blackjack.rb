

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
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
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  
  display_card_total(card_total)
  return card_total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  answer = get_user_input
  new_card = 0
  if answer == "h"
    new_card = deal_card()
    current_total += new_card
  elsif answer == "s"
    return current_total
  else 
    invalid_command
    prompt_user
    answer = get_user_input
  end
  return current_total
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
  user_ans = " "
  welcome
  user_total = initial_round

  # binding.pry
  until user_total > 21
    user_total = hit?(user_total)
    display_card_total(user_total)
    # binding.pry
  end
  # binding.pry
  end_game(user_total) 


end
    
