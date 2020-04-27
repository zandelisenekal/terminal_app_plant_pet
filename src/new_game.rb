require_relative "simulation_game.rb"
require 'tty-font'
require 'colorize'

font = TTY::Font.new(:doom)
puts font.write("Welcome!").colorize(:green)
# prints Welcome message to screen using gem when game starts

if ARGV[0] == "p" 
    # type 'p' in command line for a preview of your plant 
    puts "
    
    {o}{o}{o}
     |  |  |
    \|/\|/\|/
   [~~~~~~~~~]
    |~~~~~~~|
    |_______| 
   
   "
elsif ARGV.length == 2
    daisie = Plant_pet.new(ARGV[0].to_i, ARGV[1].to_i)
    daisie.new_game()
    # will create the plant with the input given in the command line as water and growth levels
else

puts "Do you want to start a new game? (y)es or (n)o"
reply = gets.strip.downcase
# if no input was given in command line this runs

if reply == "y"
    system("clear")
    daisie = Plant_pet.new(1,1)
    daisie.new_game()
    # creates a Plant pet called daisie and calls new_game method which starts new game
    # sets water_level and growth_level to 1 each
elsif reply == "n"
    system "clear"
    puts "Sorry to see you go, good bye."
else
    puts "Invalid selection. Please try again. Type (y) to start a new game or (n) to exit."
end
end

