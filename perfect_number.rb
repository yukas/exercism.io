class PerfectNumber
  attr_reader :number
    
  def initialize(number)
    @number = number
    
    @divisors_sum = 0       
  end

  def determine_the_number_of_perfect
    calculate_sum_of_divisors
    
    if divisors_sum == number
      puts "This is perfect number"
    else
      puts "This is not a perfectum number"
    end 
  end

  private
  
  attr_reader :divisors_sum
  
  def calculate_sum_of_divisors
    create_a_list_of_numbers.each do |num|
      conditional_test(num)
    end
  end  

  def create_a_list_of_numbers
    index = 1
    list_of_numbers = []
    
    while index < number.to_i
      list_of_numbers << index
      
      index += 1
    end
    
    list_of_numbers
  end
  
  
  def conditional_test(num)
    if number % num == 0 
        @divisors_sum += number
    end
  end
end

perfect_number = PerfectNumber.new(7)
perfect_number.determine_the_number_of_perfect
