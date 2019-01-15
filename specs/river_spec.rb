require("minitest/autorun")
require("minitest/rg")

require_relative("../Fish")
require_relative("../River")
require_relative("../Bear")

class TestRiver < MiniTest::Test

def setup
  @fish1 = Fish.new("Jimmy")
  @fish2 = Fish.new("Polly")
  @fish3 = Fish.new("Kate")
  @river = River.new("Amazon", [@fish1, @fish2, @fish3])
end

# does the river have a name
def test_river_has_name
  assert_equal("Amazon", @river.name)
end
# river loses fish to bear
def test_river_loses_fish
  @river.remove_fish(@fish1)
  assert_equal([@fish2, @fish3], @river.fish_pop)
end


end
