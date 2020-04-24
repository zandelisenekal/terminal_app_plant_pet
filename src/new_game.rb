require_relative "simulation_game.rb"
require 'tty-font'
require 'colorize'

font = TTY::Font.new(:doom)
puts font.write("Welcome!").colorize(:red)

puts "Do you want to start a new game? yes or no"
#gets response from user input
response = gets.strip.downcase

if response == "yes"
    daisie = Plant_pet.new("inside", 1,1)
    daisie.new_game()
elsif response == "no"
    system "clear"
    puts "Good bye."
else
    puts "Invalid selection. Please try again. (yes) to start a new game or (no) to exit."
end
