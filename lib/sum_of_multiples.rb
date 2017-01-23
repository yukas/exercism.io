class SumOfMultiples
  attr_reader :number
    
  def initialize(number)
    @number          = number
    
    @sum             = 0
    @list_of_numbers = []
  end
  
  def get_sum_of_multiples
    amount_calculation
    print_result
    
    sum
  end

  private
  
  attr_reader :sum, :list_of_numbers
  
  def amount_calculation
    create_a_list_of_numbers
    list_of_numbers.each do |num|
      conditional_test(num)
    end
  end
    
  def create_a_list_of_numbers
    index = 1
    
    while index < number
      @list_of_numbers << index
      
      index += 1
    end
    
    list_of_numbers
  end
  
  def conditional_test(num)
    if num % 3 == 0 || num % 5 == 0
      @sum += num
    end
  end
  
  def print_result
    puts sum
  end
end

sum_multi = SumOfMultiples.new(100)
sum_multi.get_sum_of_multiples
