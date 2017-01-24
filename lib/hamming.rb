class HammingDistanceCalculator
  attr_reader :strand1, :strand2
  attr_reader :hamming_distance
  
  def initialize(strand1, strand2)
    @strand1 = strand1
    @strand2 = strand2
    
    @hamming_distance = 0
  end
  
  def calculate_hamming_distance
    convert_strands_to_characters
    check_and_calculate_hamming_distance    
  end
  
  private
  
  def convert_strands_to_characters
    @strand1 = strand1.chars
    @strand2 = strand2.chars
  end
  
  def check_and_calculate_hamming_distance
    if strand1.length == strand2.length
      do_calculate_hamming_distance
    else
      raise "Введено неверное значение"
    end
  end
  
  def do_calculate_hamming_distance
    strand1.each_with_index do |s, index|
      @hamming_distance += 1 if strand1[index] != strand2[index]
    end
  end
end
