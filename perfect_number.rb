class PerfectNumber
  attr_reader :number, :sum
    
  def initialize(number)
    @number = number
    @sum = 0       
  end

  def determine_the_number_of_perfect
    calculate_the_amount_of_divisors
    
    if @sum == @number
      puts "This is perfect number"
    else
      puts "This is not a perfectum number"
    end 
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
  
  def calculate_the_amount_of_divisors
    create_a_list_of_numbers.each do |a|
      conditional_test(a)      
    end
    @sum
  end  
  
  def conditional_test(a)
    a = (a.to_s + ".0").to_f   
    if ((@number / a).to_s.chars.last).to_i == 0 
        @sum += a        
    end   
  end
end

PerfectNumber.new(7).determine_the_number_of_perfect