require 'minitest/autorun'

class StringCalculatorTest < Minitest::Test
  def test_add_empty_string
    assert_equal 0, StringCalculator.add("")
  end

  def test_add_single_number
    assert_equal 1, StringCalculator.add("1")
    assert_equal 2, StringCalculator.add("2")
  end

  def test_add_two_numbers
    assert_equal 3, StringCalculator.add("1,2")
  end
end

class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    numbers = input.split(',')
    numbers.map(&:to_i).sum
  end
end
