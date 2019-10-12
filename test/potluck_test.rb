require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckClass < Minitest::Test
  def setup
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatball = Dish.new("Cocktail Meatballs", :entre)
  end
  def test_potluck_class_exists
    assert_instance_of Potluck, @potluck
  end

  def test_potluck_has_date
    assert_equal "7-13-18", @potluck.date
  end

  def test_potluck_has_dish
    assert_equal [], @potluck.dishes
  end

  def test_dishes_can_be_added_to_potluck
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatball)
    assert_equal 2, @potluck.dishes.length
  end
end
