def nth_prime(num)
  n = 1
  counter = 1
  until counter > num do
    n += 1
    if is_prime(n)
      counter += 1
    end
  end
  n
end

def is_prime(n)
  dividers = (2..(n-1)).to_a
  dividers.each do |i|
    if n % i == 0
      return false
    end
  end
  return true
end

