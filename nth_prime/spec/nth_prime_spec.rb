require('rspec')
require('nth_prime')

describe('is_prime') do
  it('should return true is number is prime') do
    is_prime(317).should(eq(true))
  end
end

describe('nth_prime') do
  it('returns the prime number for the given input ') do  
    nth_prime(6).should(eq(13))
  end
end
