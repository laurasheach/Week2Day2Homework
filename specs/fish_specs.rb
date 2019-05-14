require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Dave")
  end

  def test_fish_name
    assert_equal("Dave", @fish.fish_name)
  end

end
