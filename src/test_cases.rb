require_relative 'simulation_game.rb'
require 'test/unit'

class LevelTest < Test::Unit::TestCase
    def test_water_level
        new_plant = Plant_pet.new(1,1)
        assert_not_nil(new_plant.water_level,"Plant water level cannot be nil")
    end

    def test_growth_level
        new_plant = Plant_pet.new(1,0)
        assert_compare(0, "<" ,new_plant.growth_level)
    end
end