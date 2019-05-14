require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")

    @fish_1 = Fish.new("Zoe")
    @fish_2 = Fish.new("Sara")
    @fish_3 = Fish.new("Jeremy")
    @fish_4 = Fish.new("Steve")
    @fish_5 = Fish.new("Ken")

    @fishes = [@fish_1, @fish_2, @fish_3, @fish_4, @fish_5]

    @bear = Bear.new("Yogi", "Brown")
  end

  def test_name_of_river
    assert_equal("Amazon", @river.river_name)
  end

  def test_empty_fish_count
    assert_equal([], @river.fish_count)
  end

  def test_fill_river
    @river.fill_river(@fish_1)
    @river.fill_river(@fish_2)
    @river.fill_river(@fish_3)
    @river.fill_river(@fish_4)
    @river.fill_river(@fish_5)
    assert_equal(5, @river.fish_count.length)
  end

  def test_fish_eaten
    @river.fill_river(@fish_1)
    @river.fill_river(@fish_2)
    @river.fish_eaten()
    #@bear.eat_fish(@fish_1)
    assert_equal(1, @river.fish_count.length)
  end

  def test_fish_counter
    @river.fill_river(@fish_1)
    @river.fill_river(@fish_2)
    @river.fill_river(@fish_3)
    @river.fill_river(@fish_4)
    @river.fill_river(@fish_5)
    @river.fish_eaten()
    @river.fish_eaten()
    #@bear.eat_fish(@fish_1)
    #@bear.eat_fish(@fish_2)
    assert_equal(3, @river.fish_count.length)
  end

end
