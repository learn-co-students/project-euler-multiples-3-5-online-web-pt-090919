# Enter your procedural solution here!

# list all natural numbers below limit that are multiples of 3 or 5
# collects correct multiples of natural numbers below limit
def collect_multiples(limit)
  multiples = []
  (1...limit).each do |num|
    multiples << num if (num % 3 == 0 || num % 5 == 0)
  end
  return multiples
end

# returns correct sum of multiples of 10
def sum_multiples(limit)
  multiples = collect_multiples(limit)
  # return multiples.sum
  return multiples.inject(0){|sum,n| sum + n }
end