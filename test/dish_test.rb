require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishClass < Minitest::Test

  def test_dish_exists
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_instance_of Dish, dish
  end

  def test_dish_has_a_name
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_equal "Couscous Salad", name
  end

  def test_dish_has_a_category
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_equal ":appetizer", category
  end
end
