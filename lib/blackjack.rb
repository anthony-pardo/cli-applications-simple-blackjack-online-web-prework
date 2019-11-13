def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  r = Random.new 
  r.rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 's'
    return total 
  elsif input == 'h'
    total += deal_card
  else 
    invalid_command
    prompt_user
    input = get_user_input
  end
  total
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round 
  until total > 21 do 
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
