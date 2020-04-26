require_relative "simulation_game.rb"
require 'tty-font'
require 'colorize'

font = TTY::Font.new(:doom)
puts font.write("Welcome!").colorize(:green)

# 'p' for preview
if ARGV[0] == "p" 
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
else

puts "Do you want to start a new game? (y)es or (n)o"
#gets response from user input
reply = gets.strip.downcase

if reply == "y"
    system("clear")
    begin
    daisie = Plant_pet.new(1,1)
    daisie.new_game()
    rescue ArgumentError
        puts "Wrong number of arguments given."
    end
elsif reply == "n"
    system "clear"
    puts "Good bye."
else
    puts "Invalid selection. Please try again. Type (y) to start a new game or (n) to exit."
end
end

