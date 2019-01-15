class River

attr_accessor :fish_pop, :name

  def initialize(name, fish_pop)
    @name = name
    @fish_pop = fish_pop
  end

  def remove_fish
    @fish_pop.pop
  end

  def count_fish_in_river
    @fish_pop.length
  end

# river has fish []
# river looses fish (bear eats)

end
