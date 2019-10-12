require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckClass < Minitest::Test
  def test_potluck_class_exists
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end
end
