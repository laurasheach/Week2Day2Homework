class River

  attr_reader :river_name, :fish_count

  def initialize(river_name)
    @river_name = river_name
    @fish_count = []
  end

  def fill_river(fish)
    @fish_count.push(fish)
  end

  def fish_eaten()
    @fish_count.pop()
  end


end
