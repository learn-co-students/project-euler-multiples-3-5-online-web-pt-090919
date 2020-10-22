# Enter your object-oriented solution here!
class Multiples
  attr_reader :limit, :multiples

  def initialize(limit)
    @limit = limit - 1
    @multiples = collect_multiples
  end

  def collect_multiples
      (1..limit).to_a.select{|num| num % 3 == 0 || num % 5 == 0}
  end


  def sum_multiples
    multiples.sum
  end
end
