class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def count_fish_in_stomach()
    @stomach.length
  end

  def add_fish(river)
    fish = river.remove_fish
    @stomach.push(fish)
  end

  def roar()
    return "ROOOOOAAAARRRRR"
  end

  # eats from river (stomach [] fills)


end
