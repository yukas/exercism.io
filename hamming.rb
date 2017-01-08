class HammingDistance
  attr_reader :hamming_distance, :strand1, :strand2
  
  def initialize(strand1, strand2)
    @strand1 = strand1
    @strand2 = strand2
    @hamming_distance = 0
  end
    
  def calculate_the_difference
    strand1 = @strand1.chars
    strand2 = @strand2.chars
    
    if strand1.length == strand2.length
      strand1.each_with_index do |s, index|
        if strand1[index] != strand2[index]
          @hamming_distance += 1
        end
      end
    else
      raise "Введено неверное значение"
    end
    
    puts @hamming_distance
  end
end

HammingDistance.new("wwwwwwccczzcc","eewwwwccczzcc").calculate_the_difference
