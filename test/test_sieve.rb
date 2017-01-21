require "minitest/autorun"
require "sieve"

class TestSieve < Minitest::Test
  def test_to_get_to_7_in_2_3_5_7
    primes = Sieve.new(7).sift_numbers
    
    assert_equal "2 3 5 7", primes
  end
  
  def test_to_get_to_15_in_2_3_5_7_11_13
    primes = Sieve.new(15).sift_numbers
    
    assert_equal "2 3 5 7 11 13", primes
  end
end
