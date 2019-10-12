class Potluck
  attr_reader :date, :dishes, :add_dish
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end
end
