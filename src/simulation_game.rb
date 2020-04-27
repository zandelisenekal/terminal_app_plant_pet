require_relative 'flower.rb'
require 'colorize'
require 'tty-box'

class Plant_pet
    attr_accessor :growth_level, :water_level, :fertilizer
    def initialize(water_level, growth_level)
        @fertilizer = false
        @growth_level = growth_level
        @water_level = water_level
    end
    # made fertilizer a boolean because the user can only use fertilizer once in game
    # when fertilizer is given, the boolean changes to true

    def types(word)
        word.each_char do |char|
            print char
            sleep(0.07)
        end
    end 

    def location(num_days)
        if num_days == 1 || num_days == 2
            @water_level -= num_days
            @growth_level += num_days
            # the water_level decreases with the number of days the plant is being placed in the sun
            # growth_level increases with the number of days the plant is put in the sun
            puts "Your plant is spending some time outside in the sun!"
            sleep(1*num_days)
            puts "Thank you! You remembered to bring your plant in after #{num_days} day(s)."
            # the plant moves inside 'automatically' after being outside
            sleep(1.5)
        else num_days == 3 || num_days == 4
            @water_level -= num_days 
            @growth_level += 2
            # water_level continues to decrease with the number of days due to condensation
            # the plant will pick up a pest/bug when being outside more than 2 days
            # which will cause the plant not to grow due to the bugs
            # growth_level will not increase with more than two
            sleep(1)
            puts "Your plant is spending some time outside in the sun!"
            sleep(1*num_days)
            system("clear")
            puts "Oops! It seems like bugs are now living on your plant.".colorize(:color => :light_blue, :background => :red)
            sleep(0.4)
            types("Best to treat them with some pesticide so that your plant can continue growing.")
            sleep(0.4)
            puts "\nUse pesticide?\nOptions:\n(y)es or (n)o"
            loops = true
            while loops
            use_pesticide = gets.strip.downcase
                if use_pesticide == "n"
                    system("clear")
                    puts "That is not recommended, but okay!".colorize(:red)
                    sleep(2.5)
                    @growth_level -= num_days
                    loops = false
                    # penalty of -2 on growth_level will be given if user chooses not to use pesticide
                elsif use_pesticide == "y"
                    system("clear")
                    puts "Yay, you got rid of those bugs!".colorize(:green)
                    sleep(2.5)
                    loops = false
                    # no penalty and game continues as normal when user chooses to use pesticide
                else
                    puts "Invalid selection. Please select either 'y' or 'n' to treat your plant with pesticide."
                end
            end
        end
    end
            
        
    def give_fertilizer(feed)
        if feed == false
            system("clear")
            types("Good job! You have given your plant some fertilizer which will increase the growth speed of your plant.")
            sleep(2)
            return 3
            # fertilizer will increase growth_level with 3
        elsif feed == true
            system("clear")
            types("Unfortunately you cannot give your plant fertilizer more than once.")
            sleep(2)
            return 0
        end
    end

    def new_game()
        types("Welcome to Plant Pet! You have a baby seedling to look after. Your task is to take special care of your plant until it grows a beautiful flower.\nGood luck!")
        sleep(1)
        system("clear")
        # this method will run when new_game is selected which holds the main game

        while @growth_level < 10 && @growth_level > 0
            # the loop will only continue to run whilst the plant is alive
            # which is when growth level is more than 0
            # the loop will exit when growth_level is more than 10 because then the user wins the game
            sleep(0.2)
            system("clear")
            print TTY::Box.frame "Growth level: #{@growth_level}\nWater level: #{@water_level}".colorize(:light_blue)
            # gem tty box is used to display the growth_level and water_level to user throughout the game
            puts "You have the following options to choose from. What would you like to do with your plant?\n1 Give water\n2 Move outside in the sun\n3 Give fertilizer\n4 Help"
            # main menu options
            # will loop through up to game_over when user either wins or loses
            response = gets.strip.to_i
                if response == 1
                    if @water_level < 10
                        system("clear")
                        types("Well done, you have given your plant some water.")
                        # user will be able to give plant water whilst water_level is less than 10
                        sleep(2)
                        @water_level += 2
                        @growth_level += 1
                        # water_level increase with 2 each time water is given
                        # growth_level increase with 1 each time water is given
                        if @water_level == 9
                            types("Slow down and check your water level, you dont want your plant to drown!")
                            # warning message to user that the water_level is high
                            # because the plant will die when water_level goes over 10
                            sleep(3)
                        end
                        if @water_level > 10
                            end_game_lose = Game_over.new()
                            end_game_lose.lose("over watering.")
                            # calls lose method in Game_over class when water_level more than 10
                            # gives string as death reason of plant in variable
                            @growth_level = -1
                            #sets growth_level to minus 1 which will cause loop to break and game to quit
                        end
                    end
                elsif response == 2
                    system("clear")
                    types("How long do you want to move your plant outside in the sun?\nPick a number:\n1: 1 day\n2: 2 days\n3: 3 days\n4: 4 days\n")
                    days = gets.strip.to_i
                        system("clear")
                        case days
                        when 1..4
                            location(days)
                        else
                            puts "Invalid selection, please try again"
                        end
                elsif response == 3
                    @growth_level += give_fertilizer(@fertilizer)
                    @fertilizer = true
                    # calls give_fertilizer method and turns fertilizer boolean to true
                elsif response == 4
                    system("clear")
                    puts "Menu options:\nType [1] to water your plant.\nType [2] to move your plant outside.\nType [3] to give your plant fertilizer."
                    sleep(4)
                else
                    break
                    # breaks out of loop
                end
            if @water_level <= 0
                end_game_lose = Game_over.new()
                end_game_lose.lose("not being watered enough.")
                @growth_level = -1
                # calls on Game_over class and lose method
                # plant dies because water_level is less than 0
                # sets growth_level to minus 1 to break out of loop
                break
            end
        end
        if @growth_level >= 10
            end_game_win = Game_over.new()
            end_game_win.win()
            # calls win method in Game_over class
        end
    end
end







