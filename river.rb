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

  def fish_counter(item)
    for fish in @fish_count
      if fish.fish_count == item
        fill_river(fish)
      elsif fish.eat_fish == item
        fish_eaten()
      end
    end
    @fish_count.count(fish)
  end

end
