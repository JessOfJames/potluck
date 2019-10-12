require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckClass < Minitest::Test
  def setup
    @potluck = Potluck.new("7-13-18")
  end
  def test_potluck_class_exists
    assert_instance_of Potluck, @potluck
  end

  def test_potluck_has_date
    assert_equal "7-13-18", @potluck.date
  end
end
