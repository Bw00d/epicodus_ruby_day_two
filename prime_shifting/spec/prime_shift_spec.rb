require('rspec')
require('prime_shift')

describe('lesser_primes') do
  it('returns an array of all the primes less than a given number') do
    lesser_primes(15).should(eq([2, 3, 5, 7, 11, 13]))
  end
end
