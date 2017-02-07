require 'minitest/autorun'

require './human'
require './coffee'

class CaffeineTest < MiniTest::Test
  def test_humans_tend_to_be_sleepy
    tyler = Human.new "Tyler"
    assert tyler.alertness < 0.1
  end

  def test_humans_need_coffee
    randy = Human.new "Randy"
    refute randy.has_coffee?
    assert randy.needs_coffee?
  end

  def test_humans_can_drink_coffee
    sherri = Human.new "Sherri"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    assert tsmf.full?

    sherri.buy tsmf
    sherri.drink!
    assert(sherri.alertness.between?(0.1, 0.33))
    refute tsmf.full?
    refute tsmf.empty?
  end

  def test_humans_can_drink_all_the_coffee
    trevor = Human.new "Trevor"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    trevor.buy tsmf

    3.times { trevor.drink! }
    assert tsmf.empty?
    assert trevor.alertness > 0.9
  end

  # Write a test for an "Espresso" having a greater affect on a person's alertness
  # (it increases it by 0.4). Don't edit any existing tests.
  # An espresso has only one drink in it.
  # Make those tests pass

  def test_espresso_more_effective
    hipster = Human.new "Hipster"
    espresso = Espresso.new "Espresso"

    hipster.buy espresso
    assert espresso.drinks_before_empty == 1

    hipster.drink!
    assert (hipster.alertness > 0.4)

  end

end
