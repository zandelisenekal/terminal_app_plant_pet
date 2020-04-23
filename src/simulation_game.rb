class New_game
    attr_accessor :growth_level, :water_level, :fertilizer, :location
    def initialize
        @water = water
        @water_level = water_level
        @location = location
        @fertilizer = fertilizer
        @growth_level = growth_level
    end
end

water_level = 1
growth_level = 1
fertilizer = false
location = "inside"

def change_location(in_out)
    if in_out == "inside"
        in_out = "outside"
        puts "You have moved your plant outside in the sun."
    elsif in_out == "outside"
        in_out = "inside"
        puts "You have now moved your plant back inside, next to your other indoor plants."
    end
    return in_out
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

        
   
puts "Welcome to Plant Pet! You have a baby seedling to look after."

while growth_level <10
    puts "Your growth level is #{growth_level}"
    puts "Your water level is #{water_level}"
    puts "Your plant is currently #{location}"
    puts "You have the following options to choose from. What would you like to do with your new baby?\n1 Give water\n2 Move inside or outside in the sun\n3 Give fertilizer\n4 Help"
    response = gets.strip.to_i
    if response == 1
        if water_level < 10
            puts "You have given your plant some water."
            water_level += 2
            growth_level += 1
                if water_level == 9
                puts "Slow down, you dont want your plant to drown!"
                end
                if water_level > 10
                puts "Oops! :'( Your baby has died." 
                end
        end
    elsif response == 2
        puts "Do you want to move your plant inside or outside? Options: inside, outside"
        in_out = gets.strip.downcase
        if in_out == "inside"
            if location == "inside"
                puts "Your plant is already chilling inside. Do you want to move it outside? Options: yes or no"
                reply = gets.strip.downcase
                if reply == "yes"
                    location = change_location(location)
                elsif reply == "no"
                    puts "Okay. Lets keep the plants chilling inside then."
                else
                    puts "Invalid selection. Please try again."
                end
            else 
                location = change_location(location)
            end
        elsif in_out == "outside"
            if location == "outside"
                puts "Your plant is already outside. Shame, do you want to bring it inside? Options: yes or no"
                reply = gets.strip.downcase
                if reply == "yes"
                    location = change_location(location)
                elsif reply == "no"
                    puts "Okay. Just dont forget about your plant chilling in the sun outside."
                else
                    puts "Invalid selection. Please try again."
                end
            else
                location = change_location(location)
            end
        else 
            puts "Invalid selection. Please try again."
        end

    elsif response == 3
        growth_level += give_fertilizer(fertilizer)
        fertilizer = true
    elsif response == 4
        puts "you want help"
    else
       break
    end
   
end

