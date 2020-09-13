# Enter your object-oriented solution here!
class Multiples

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    multiples = []
    (1...@limit).each do |num|
      multiples << num if (num % 3 == 0 || num % 5 == 0)
    end
    return multiples
  end

  def sum_multiples
    multiples = self.collect_multiples
    # return multiples.sum
    return multiples.inject(0){|sum,n| sum + n }
  end
end

Multiples.new(1000).sum_multiples