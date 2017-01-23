require "minitest/autorun"
require "hamming"

class TestHammingDistanceCalculator < Minitest::Test
  def test_to_get_hamming_distance_to_3
    hamming_distance = HammingDistanceCalculator.new("wwwwwwccczzic", "wwttwwccctzic").print_hamming_distance
    
    assert_equal 3, hamming_distance
  end
  
  def test_to_get_hamming_distance_to_0
    hamming_distance = HammingDistanceCalculator.new("wwwwwwccczzic", "wwwwwwccczzic").print_hamming_distance
    
    assert_equal 0, hamming_distance
  end
end
