class River

attr_reader :fish_pop, :name

  def initialize(name, fish_pop)
    @name = name
    @fish_pop = fish_pop
  end

  def remove_fish(fish)
    @fish_pop.delete(fish)
  end

# river has fish []
# river looses fish (bear eats)

end
