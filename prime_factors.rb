module PrimeFactors
  def self.of(n)
    prime_factors = []
    divisor = 2

    while n > 1
      prime_factors << divisor and n/=divisor while n % divisor == 0
      divisor += 1
    end

    prime_factors << n if n > 1
    prime_factors
  end
end
