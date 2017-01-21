class PerfectNumber
  attr_reader :number
    
  def initialize(number)
    @number           = number
    
    @list_of_numbers  = []
    @divisors_sum     = 0
  end

  def determine_the_number_of_perfect
    calculate_sum_of_divisors
    
    print_result
  end

  private
  
  attr_reader :divisors_sum, :list_of_numbers
  
  def calculate_sum_of_divisors
    create_a_list_of_numbers
    list_of_numbers.each do |num|
      conditional_test(num)
    end
  end

  def create_a_list_of_numbers
    index = 1    
    
    while index < number.to_i
      @list_of_numbers << index
      
      index += 1
    end
  end
  
  def conditional_test(num)
    @divisors_sum += num if number % num == 0
  end
  
  def print_result
    if divisors_sum == number
      puts "This is perfect number"
      "This is perfect number"
    else
      puts "This is not a perfectum number"
      "This is not a perfectum number"
    end
  end
end

perfect_number = PerfectNumber.new(6)
perfect_number.determine_the_number_of_perfect
