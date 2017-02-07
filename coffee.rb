class Coffee

  attr_accessor :coffee_name, :caffeine_amount, :drinks_before_empty

  def initialize(coffee_name, caffeine_amount = 0.31, drinks_before_empty = 3)
    self.coffee_name = coffee_name
    self.caffeine_amount = caffeine_amount
    self.drinks_before_empty = drinks_before_empty
  end

  def full?
    if drinks_before_empty == 3
      return true
    elsif drinks_before_empty < 3
      return false
    end
  end

  def empty?
    if drinks_before_empty != 0
      return false
    else
      return true
    end
  end

end

class Espresso < Coffee
attr_accessor :coffee_name, :caffeine_amount, :drinks_before_empty

  def initialize (coffee_name, caffeine_amount = 0.41, drinks_before_empty = 1)
    # self.coffee_name = coffee_name
    self.caffeine_amount = caffeine_amount
    self.drinks_before_empty = drinks_before_empty

  end
end
