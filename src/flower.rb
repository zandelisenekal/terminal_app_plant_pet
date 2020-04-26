require_relative 'simulation_game.rb'
require 'tty-font'
require 'colorize'


class Game_over 
    def initialize()
    end

    def types(word)
        word.each_char do |char|
            print char
            sleep(0.05)
        end
    end 

    def win()
        types("Well done! Look at the surprise from your baby plant!".colorize(:green))
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

    def lose(reason)
        system("clear")
        begin
        types("Oh no! Your plant has died due to ".colorize(:red) + reason.colorize(:red))
        rescue NameError
            puts "Check your method variable name."
        end
        sleep(2)
        system("clear")
        font = TTY::Font.new(:starwars)
        puts font.write("GameOver!").colorize(:red)
    end
end


   
  



   
