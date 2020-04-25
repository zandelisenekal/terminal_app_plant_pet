require_relative "simulation_game.rb"
require 'tty-font'
require 'colorize'

font = TTY::Font.new(:doom)
puts font.write("Welcome!").colorize(:green)

puts "Do you want to start a new game? (y)es or (n)o"
#gets response from user input
response = gets.strip.downcase

if response == "y"
    system("clear")
    begin
    daisie = Plant_pet.new(1,1)
    daisie.new_game()
    rescue ArgumentError
        puts "Wrong number of arguments given."
    end
elsif response == "n"
    system "clear"
    puts "Good bye."
else
    puts "Invalid selection. Please try again. Type (y) to start a new game or (n) to exit."
end
