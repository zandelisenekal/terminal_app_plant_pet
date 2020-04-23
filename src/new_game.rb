require_relative "simulation_game.rb"

puts "Do you want to start a new game? yes or no"
#gets response from user input
response = gets.strip.downcase

if response == "yes"
    hi
elsif response == "no"
    system "clear"
    puts "Good bye."
else
    puts "Invalid selection. Please try again. (yes) to start a new game or (no) to exit."
end
