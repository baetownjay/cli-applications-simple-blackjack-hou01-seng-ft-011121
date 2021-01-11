require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_values = (1..11).to_a
  card = card_values.shuffle[0]
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  if number > 21
    puts "Sorry, you hit #{number}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  total = 0
  total += deal_card
  total += deal_card
  display_card_total(total)
  total
end

def hit?(total)
  # code hit? here
    prompt_user
    answer = get_user_input
    while answer != "h" && answer != "s"
      invalid_command
      prompt_user
      answer = get_user_input
    end
    if answer == 'h'
      total += deal_card
    end
  total
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  hit?(deal_card)
  
end
    
