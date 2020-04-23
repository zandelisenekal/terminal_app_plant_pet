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



def give_fertilizer(feed)
    if feed == false
        puts "You have given your plant some fertilizer."
        return 3
    elsif feed == true
        puts "You have already given your plant fertilizer."
        return 0
    end
end

def give_water(check_water)
    temp_array = Array.new
    if check_water < 10
        puts "You have given your plant some water."
        water_level += 2
        growth_level += 1
            if check_water == 9
            puts "Slow down, you dont want your plant to drown!"
            end
            if check_water > 10
            puts "Oops! :'( Your baby has died." 
            end
    end
end
        
   
puts "Welcome to Plant Pet! You have a baby seedling to look after."

while growth_level <10
    puts "Your growth level is #{growth_level}"
    puts "Your water level is #{water_level}"
    puts "You have the following options to choose from. What would you like to do with your new baby?\n1 Give water\n2 Move inside or outside in the sun\n3 Give fertilizer\n4 Help"
    response = gets.strip.to_i
    if response == 1
       give_water(water_level)
    elsif response == 2
        @location
    elsif response == 3
        growth_level += give_fertilizer(fertilizer)
        fertilizer = true
    elsif response == 4
        puts "you want help"
    else
       break
    end
   
end

