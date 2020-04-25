require_relative 'flower.rb'
require 'colorize'
require 'tty-box'

class Plant_pet
    attr_accessor :growth_level, :water_level, :fertilizer
    def initialize(water_level, growth_level)
        @water_level = water_level
        @fertilizer = false
        @growth_level = growth_level
    end


    def location(num_days)
        if num_days == 1 || num_days == 2
            @water_level -= num_days
            @growth_level += num_days
            puts "Your plant is spending some time outside!"
            sleep(1*num_days)
            puts "Great! You remembered to bring your plant in after #{num_days} day(s)."
        else num_days == 3 || num_days == 4
            @water_level -= num_days 
            @growth_level += 2
            sleep(2)
            puts "Oops, your plant picked up a pest outside!.\nBest to treat it with some pesticide to ensure your plant will continue growing nice and strong.\nUse pesticide?\nOptions:\nYes or no"
            loops = true
            while loops
            use_pesticide = gets.strip.downcase
                if use_pesticide == "no"
                    puts "Not recommended, but okay!"
                    @growth_level -= num_days
                    loops = false
                elsif use_pesticide == "yes"
                    puts "Yay, you got rid of those bugs!"
                    loops = false
                else
                    puts "Invalid selection. Please select either 'yes' or 'no' to treat your plant with pesticide."
                end
            end
        end
    end
            
        
    def give_fertilizer(feed)
        if feed == false
            puts "You have given your plant some fertilizer."
            return 3
        elsif feed == true
            puts "You have already given your plant fertilizer."
            return 0
        end
    end

    def new_game()
        puts "Welcome to Plant Pet! You have a baby seedling to look after."
        sleep(1)
        system("clear")

        while @growth_level <10
            sleep(1)
            print TTY::Box.frame "Growth level: #{@growth_level}\nWater level: #{@water_level}".colorize(:light_blue)
            puts "You have the following options to choose from. What would you like to do with your new baby?\n1 Give water\n2 Move inside or outside in the sun\n3 Give fertilizer\n4 Help"
            response = gets.strip.to_i
                if response == 1
                    if @water_level < 10
                        system("clear")
                        puts "You have given your plant some water."
                        @water_level += 2
                        @growth_level += 1
                        if @water_level == 9
                            puts "Slow down, you dont want your plant to drown!"
                        end
                        if @water_level > 10
                            puts "Oops! :'( Your baby has died." 
                        end
                    end
                elsif response == 2
                    system("clear")
                    puts "Your plant is already inside. Would you like to move it outside? yes or no?"
                    answer = gets.strip.downcase
                    if answer == "no"
                        system("clear")
                        puts "Cool, keep your plant chilling inside"
                    elsif answer == "yes"
                        system("clear")
                        puts "For how long do you want to move your plant outside in the sun?\nPick a number:\n1: 1 day\n2: 2 days\n3: 3 days\n4: 4 days"
                        days = gets.strip.to_i
                        system("clear")
                        case days
                        when 1..4
                            location(days)
                        else
                            puts "Invalid selection, please try again"
                        end
                    end
                elsif response == 3
                    @growth_level += give_fertilizer(@fertilizer)
                    @fertilizer = true
                elsif response == 4
                    puts "Type 1 to water your plant.\nType 2 to move your plant outside.\nType 3 to give your plant fertilizer."
                else
                    break
                end
            if  water_level <= 0

                end_game_lose = Game_over.new()
                end_game_lose.lose()
                break
            end
            system("clear")
        end
        if growth_level >= 10
            end_game_win = Game_over.new()
            end_game_win.win()
        end
    end
end





