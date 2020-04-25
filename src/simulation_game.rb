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

    def types(word)
        word.each_char do |char|
            print char
            sleep(0.05)
        end
    end 

    def location(num_days)
        if num_days == 1 || num_days == 2
            @water_level -= num_days
            @growth_level += num_days
            puts "Your plant is spending some time outside!"
            sleep(1*num_days)
            puts "Great! You remembered to bring your plant in after #{num_days} day(s)."
            sleep(1.5)
        else num_days == 3 || num_days == 4
            @water_level -= num_days 
            @growth_level += 2
            sleep(1)
            puts "Oops, your plant picked up a pest outside!".colorize(:color => :light_blue, :background => :red)
            sleep(0.4)
            types("Best to treat it with some pesticide to ensure your plant will continue growing nice and strong.")
            puts "\nUse pesticide?\nOptions:\n(y)es or (n)o"
            loops = true
            while loops
            use_pesticide = gets.strip.downcase
                if use_pesticide == "n"
                    system("clear")
                    puts "Not recommended, but okay!".colorize(:red)
                    sleep(2.5)
                    @growth_level -= num_days
                    loops = false
                elsif use_pesticide == "y"
                    system("clear")
                    puts "Yay, you got rid of those bugs!".colorize(:green)
                    sleep(2.5)
                    loops = false
                else
                    puts "Invalid selection. Please select either 'y' or 'n' to treat your plant with pesticide."
                end
            end
        end
    end
            
        
    def give_fertilizer(feed)
        if feed == false
            system("clear")
            puts "You have given your plant some fertilizer."
            sleep(2)
            return 3
        elsif feed == true
            system("clear")
            puts "You have already given your plant fertilizer."
            sleep(2)
            return 0
        end
    end

    def new_game()
        types("Welcome to Plant Pet! You have a baby seedling to look after.")
        sleep(1)
        system("clear")

        while @growth_level < 10 && @growth_level > 0
            sleep(0.2)
            system("clear")
            print TTY::Box.frame "Growth level: #{@growth_level}\nWater level: #{@water_level}".colorize(:light_blue)
            puts "You have the following options to choose from. What would you like to do with your new baby?\n1 Give water\n2 Move inside or outside in the sun\n3 Give fertilizer\n4 Help"
            response = gets.strip.to_i
                if response == 1
                    if @water_level < 10
                        system("clear")
                        puts "You have given your plant some water."
                        sleep(2)
                        @water_level += 2
                        @growth_level += 1
                        if @water_level == 9
                            puts "Slow down, you dont want your plant to drown!"
                            sleep(3)
                        end
                        if @water_level > 10
                            end_game_lose = Game_over.new()
                            end_game_lose.lose()
                            @growth_level = -1
                        end
                    end
                elsif response == 2
                    system("clear")
                    puts "Your plant is already inside. Would you like to move it outside? (y)es or (n)o?"
                    answer = gets.strip.downcase
                    if answer == "n"
                        system("clear")
                        puts "Cool, keep your plant chilling inside"
                    elsif answer == "y"
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
            if @water_level <= 0
                end_game_lose = Game_over.new()
                end_game_lose.lose()
                @growth_level = -1
                break
            end
        end
        if @growth_level >= 10
            end_game_win = Game_over.new()
            end_game_win.win()
        end
    end
end





