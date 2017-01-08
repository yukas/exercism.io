class SumOfMultiplease 
  attr_reader :number, :sum
    
  def initialize(number)
    @number = number
    @sum = 0       
  end

  def amount_calculation       
    create_a_list_of_numbers.each do |a|
      conditional_test(a)      
    end
    
    puts @sum   
  end
  
  private
    
  def create_a_list_of_numbers
    index = 1
    list_of_numbers = []
    
    while index < @number.to_i
      list_of_numbers << index
      
      index += 1
    end
    
    list_of_numbers
  end
  
  def conditional_test(a)
    if ((a / 3.0).to_s.chars.last).to_i == 0 || ((a / 5.0).to_s.chars.last).to_i == 0      
        @sum += a        
    end   
  end  
end

SumOfMultiplease.new(1000).amount_calculation