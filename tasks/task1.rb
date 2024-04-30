# Написать в файле color.rb функцию для преобразования цвета из формата (0-255, 0-255, 0-255) в шестнадцатеричный формат.
# Реализовать проверку выхода за границы допустимого диапазона значений.
# В случае, если значения выходят за диапазон, приводить к ближайшим допустимым. :
#  (0,0,0) => 000000
#  (255,255,255) => FFFFFF
#  (-2, 0, 280) => 0000FF.

# DO NOT MODIFY CODE BELOW
require_relative '../lib/color'
require 'test/unit'

class TestColor < Test::Unit::TestCase
  def test_black
    assert_equal '000000', color(0,0,0), 'Should convert black color'
  end
  def test_white
    assert_equal 'FFFFFF', color(255,255,255), 'Should convert white color'
  end

  def test_boundaries
    assert_equal '0000FF', color(-2, 0, 280), 'Should handle boundaries color'
  end

end



