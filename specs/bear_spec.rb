require("minitest/autorun")
require("minitest/rg")

require_relative("../Fish")
require_relative("../River")
require_relative("../Bear")

class TestBear < MiniTest::Test

 def setup
   @bear = Bear.new("Collin", "Grizzly")
   @fish1 = Fish.new("Jimmy")
   @fish2 = Fish.new("Polly")
   @fish3 = Fish.new("Kate")
   @river = River.new("Amazon", [@fish1, @fish2, @fish3])
 end

# does the bear have a name?
 def test_bear_has_name
   assert_equal("Collin", @bear.name)
 end
# does the bear have a type
 def test_bear_has_type
   assert_equal("Grizzly", @bear.type)
 end
# does the bear have an empty stomach?
 def test_bear_has_empty_stomach
   assert_equal(0, @bear.count_fish_in_stomach())
 end
# add a fish to the bears stomach
 def test_add_fish_to_bear_stomach
   @bear.add_fish(@river)
   assert_equal(1, @bear.count_fish_in_stomach)
 end
# can the bear roar? 
 def test_bear_can_roar
   assert_equal("ROOOOOAAAARRRRR", @bear.roar())
 end


   #add fish to stomach
   #remove fish from river

 end
