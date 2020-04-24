class Plant_pet
    attr_accessor :growth_level, :water_level, :fertilizer, :location
    def initialize(location, water_level, growth_level)
        @water_level = water_level
        @location = location
        @fertilizer = false
        @growth_level = growth_level
    end


    def location(num_days)
        if num_days == 1 || 2
            @water_level -= (1*num_days)
            @growth_level += (1*num_days)
            puts "Your plant is spending some time outside!"
            sleep(1*num_days)
            puts "Thanks for remembering to bring your plant in after #{num_days} day(s)."
        else num_days == 3 || 4
            @water_level -= (1*num_days) 
            @growth_level += 2
            sleep(2)
            puts "Oops, your plant picked up a pest while being outside for too long.\nBest to treat it with some pesticide to ensure your plant will continue growing nice and strong.\nUse pesticide?\nOptions:\nYes or no"
            use_pesticide = gets.strip.downcase
            if use_pesticide == "no"
                Puts "Not recommended, but okay!"
                @growth_level -= (1*num_days)
            elsif use_pesticide == "yes"
                puts "Thanks for getting rid of those bugs!"
            else
                puts "Invalid selection. Please select either 'yes' or 'no' to treat your plant with pesticide."
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

while @growth_level <10
    puts "Your growth level is #{@growth_level}"
    puts "Your water level is #{@water_level}"
    puts "Your plant is currently #{@location}"
    puts "You have the following options to choose from. What would you like to do with your new baby?\n1 Give water\n2 Move inside or outside in the sun\n3 Give fertilizer\n4 Help"
    response = gets.strip.to_i
    if response == 1
        if @water_level < 10
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
        puts "Your plant is already inside. Would you like to move it outside? yes or no?"
        answer = gets.strip.downcase
        if answer == "no"
            puts "Cool, keep your plant chilling inside"
        elsif answer == "yes"
            puts "For how long do you want to move your plant outside in the sun?\nPick a number:\n1: 1 day\n2: 2 days\n3: 3 days\n4: 4 days"
            days = gets.strip.to_i
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
        puts "you want help"
    else
       break
    end
   
end
end
end

