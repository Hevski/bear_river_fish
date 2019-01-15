require("minitest/autorun")
require("minitest/rg")

require_relative("../Fish")
require_relative("../River")
require_relative("../Bear")

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Gus")
  end

 def test_fish_name
   assert_equal("Gus", @fish.name)
 end

 def test_set_fish_name
   @fish.name = "Hev"
   assert_equal("Hev", @fish.name)
 end

end
