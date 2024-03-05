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

  def test_add_multiple_numbers
    assert_equal 6, StringCalculator.add("1,2,3")
  end

  def test_add_with_new_lines
    assert_equal 6, StringCalculator.add("1\n2,3")
  end

  def test_add_with_different_delimiters
    assert_equal 3, StringCalculator.add("//;\n1;2")
  end

  def test_add_negative_numbers
    assert_raises(ArgumentError) { StringCalculator.add("-1,2") }
  end
end

class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    if input.start_with?("//")
      delimiter = input[2]
      input = input.split("\n", 2).last
    else
      delimiter = /,|\n/
    end
    numbers = input.split(delimiter)
    numbers.map(&:to_i).sum
  end
end
