class Daisie
    attr_accessor :sun_shade, :growth_level, :water_level, :fertilizer, :pesticide
    def initialize(sun_shade)
        @sun_shade = sun_shade
        @growth_level = 1     #starts at 1, flowers at 10
        @water_level = 1      #starts at 1, dies at 0 or >10
        @fertilizer = false       #max 1
        @pesticide = false    #can only use when pests occur
    end

    def water
        @water_level += 2
    end

    def fertilizer
        if @fertilizer == false
            @fertilizer == true
            puts "Thank you for feeding your plant! The fertilizer will make your plant grow faster!"
        elsif @fertilizer == true
            puts "You cannot fertilize your plant again."
        end
    end
    


