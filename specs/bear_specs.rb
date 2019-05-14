require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  def setup

    @bear = Bear.new("Yogi", "Brown")

    @river = River.new("Amazon")

    @fish_1 = Fish.new("Zoe")
    @fish_2 = Fish.new("Sara")
    @fish_3 = Fish.new("Jeremy")
    @fish_4 = Fish.new("Steve")
    @fish_5 = Fish.new("Ken")

    @fishes = [@fish_1, @fish_2, @fish_3, @fish_4, @fish_5]

  end

  def test_name
    assert_equal("Yogi", @bear.name)
  end

  def test_type
    assert_equal("Brown", @bear.type)
  end

  def test_stomach_count
      assert_equal([], @bear.stomach)
  end

  def test_eat_fish
    @river.fill_river(@fish_1)
    @river.fill_river(@fish_2)
    @river.fill_river(@fish_3)
    @river.fill_river(@fish_4)
    @river.fill_river(@fish_5)
    @river.fish_eaten()
    #@bear.eat_fish()
    assert_equal(4, @river.fish_count.length)

  end



end
