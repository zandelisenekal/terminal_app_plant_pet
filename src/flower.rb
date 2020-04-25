require_relative 'simulation_game.rb'
require 'tty-font'
require 'colorize'


class Game_over 
    def initialize()
    end


    def win()
    puts "Well done! Your plant has a surprise for you!"
    sleep(1)
    system("clear")
    puts "
    
    {o}{o}{o}
     |  |  |
    \|/\|/\|/
   [~~~~~~~~~]
    |~~~~~~~|
    |_______| 
   
   "
    end

    def lose()
    puts "Oh no! Your plant has died!"
    sleep(2)
    system("clear")
    font = TTY::Font.new(:starwars)
    puts font.write("GameOver!").colorize(:red)
    end
end


   
  



   
