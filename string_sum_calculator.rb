require 'minitest/autorun'

class StringCalculatorTest < Minitest::Test
  def test_add_empty_string
    assert_equal 0, StringCalculator.add("")
  end
end

class StringCalculator
  def self.add(input)
    0
  end
end
