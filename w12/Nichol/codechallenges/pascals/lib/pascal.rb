class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end

def central(n)
  puts ((2*n).fact)/((n.fact)*(n.fact))
end

paths = central(20)