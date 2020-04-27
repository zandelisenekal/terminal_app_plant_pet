require_relative 'simulation_game.rb'
require 'tty-font'
require 'colorize'


class Game_over
    # class will hold applicable methods for when game is over
    def initialize()
    end

    def types(word)  
        # method that types out characters of each word in string like typewriter
        word.each_char do |char|
            print char
            sleep(0.05)
        end
    end 

    def win()
        # method defining win with message and ascii image of a plant
        types("Well done, player! A surprise awaits from your not-so-baby Plant!".colorize(:green))
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
        # method defining lose with a message and GameOver text 
        system("clear")
        begin
        types("Oh no! It looks like your plant has died due to ".colorize(:red) + reason.colorize(:red))
        rescue NameError
            puts "Check your method variable name."
        end
        sleep(2)
        system("clear")
        font = TTY::Font.new(:starwars)
        puts font.write("GameOver!").colorize(:red)
        # prints GameOver text to screen using gem
    end
end


   
  



   
