def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
    rand(1..11)
end

def display_card_total(total)
    puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    gets.chomp
  # code #get_user_input here
end

def end_game(total)
    puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
    sum = deal_card + deal_card
    display_card_total(sum)
    sum
  # code #initial_round here
end

def hit?(total)
    prompt_user
    input = get_user_input
    if input == "h"
        total += deal_card
    elsif input == "s"
        total
    else
        invalid_command
    end
end

def invalid_command
  # code invalid_command here
    puts "Please enter a valid command"
    prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
    welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)

end
    
