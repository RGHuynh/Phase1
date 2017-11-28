# Get input from the user:  the cheer
def call_out_cheer
    p "write some shit!"
    number_of_tries = 1
    user_cheer = gets.chomp
    until user_cheer != "" || number_of_tries == 2
      number_of_tries += 1
      user_cheer = gets.chomp
    end
    user_cheer
end

# Determine the mascot's response based on the argument
# passed to the method
def mascot_sign_for(input)
    case input
    when "RED HOT"
        return 'H-O-T!'
    when "DO IT AGAIN"
        return "Go, Fight, Win"
    when "2 BITS"
        return "Holler!"
    when "STOMP YOUR FEET"
        return "STOMP!"
    else
        return "Go Team!"
    end
end

# Print the argument passed to the method
def display(response)
    p response
end

# This method will control the flow of the application,
# making use of the other three methods.
def coordinate_cheers
    user_cheer = call_out_cheer
    
    until user_cheer == "GAME OVER" || user_cheer == ""
      mascot_sign = mascot_sign_for(user_cheer)
      display(mascot_sign)
      user_cheer = call_out_cheer
    end
end