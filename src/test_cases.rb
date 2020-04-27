require_relative 'simulation_game.rb'
require 'test/unit'

class LevelTest < Test::Unit::TestCase
    # test that the water and growth level of the plant is not nil when new plant is created
    def test_water_level
        new_plant = Plant_pet.new(1,1)
        assert_not_nil(new_plant.water_level,"Plant water level cannot be nil")
    end

    def test_growth_level
        new_plant = Plant_pet.new(1,1)
        assert_not_nil(new_plant.growth_level,"Plant growth level cannot be nil")
    end
end
    

class Assert_compare_test < Test::Unit::TestCase
    # test that the water and growth level of the plant is more than 0 when new plant is created
    def test_growth_level
        new_plant = Plant_pet.new(1,1)
        # test will pass
        # test will fail when (1,0)
        assert_compare(0, "<", new_plant.growth_level)
    end

    def test_water_level
        new_plant = Plant_pet.new(1,1)
        # test will pass
        # test will fail when (0,1)
        assert_compare(0, "<", new_plant.water_level)
    end
end