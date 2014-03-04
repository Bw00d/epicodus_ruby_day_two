def lesser_primes(num)
  list  = (2..num).to_a

  list.each do |prime|
    list.reject! do |n|
      n % prime == 0 && n != prime
    end
  end
  list
end
