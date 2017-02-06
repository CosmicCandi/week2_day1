class Human
  attr_accessor :name,
                :alertness,
                :cuppa_joe

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
  end

  def has_coffee?
    false
  end

  def needs_coffee?
    true
  end

  def buy(coffee_name)
    self.cuppa_joe = coffee_name
  end

  def drink!
    self.alertness += cuppa_joe.caffeine_amount
    cuppa_joe.drinks_before_empty -= 1
  end

  def <
  end

end
