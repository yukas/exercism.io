require "minitest/autorun"
require "sum_of_multiples"

class TestSumOfMultiples < Minitest::Test
  def test_get_sum_in_1000
    sum_of_multi = SumOfMultiples.new(1000).get_sum_of_multiples
    
    assert_equal 233168, sum_of_multi
  end
  
  def test_get_sum_in_100
    sum_of_multi = SumOfMultiples.new(100).get_sum_of_multiples
    
    assert_equal 2318, sum_of_multi
  end
end
