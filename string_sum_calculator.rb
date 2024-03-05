require 'minitest/autorun'

class StringCalculatorTest < Minitest::Test
  def test_add_empty_string
    assert_equal 0, StringCalculator.add("")
  end

  def test_add_single_number
    assert_equal 1, StringCalculator.add("1")
    assert_equal 2, StringCalculator.add("2")
  end
end

class StringCalculator
  def self.add(input)
    0
  end
end
