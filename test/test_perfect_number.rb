require "minitest/autorun"
require "perfect_number"

class TestPerfectNumber < Minitest::Test
  def test_get_perfect_number
    result = PerfectNumber.new(6).determine_the_number_of_perfect
    
    assert_equal "This is perfect number", result
  end
  
  def test_get_the_number_of_imperfect
    result = PerfectNumber.new(25).determine_the_number_of_perfect
    
    assert_equal "This is not a perfectum number", result
  end
end
