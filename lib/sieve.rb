class Sieve
  attr_reader :limit_the_number
  attr_reader :primes

  def initialize(limit_the_number)
    @limit_the_number = limit_the_number
    
    @quantity_of_dividers = 0
    @dividers = []
    @primes = []
    @numbers = []
  end
  
  def sift_numbers
    receive_a_sequence_of_numbers
    receive_a_prime_numbers
    convert_to_a_string
  end
  
  private
  
  attr_reader :dividers, :primes, :numbers, :quantity_of_dividers

  def receive_a_sequence_of_numbers
    index = 2
    
    while index <= limit_the_number.to_i
      @numbers << index
      
      index += 1
    end    
  end
  
  def receive_a_prime_numbers
    numbers.each do |number|
      @dividers << number
      find_prime_numbers(number)      
      @quantity_of_dividers = 0
    end    
  end
  
  def find_prime_numbers(number)
    dividers.each do |divider|
      break if divider == number
      @quantity_of_dividers += 1 if number % divider == 0           
    end
    
    @primes << number if quantity_of_dividers == 0    
  end
  
  def convert_to_a_string    
    primes.join(" ")
  end
end
