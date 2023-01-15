class Calculator
  def add(x,y)
    x + y
  end

  def subtract(x,y)
    x - y
  end

  def multiply(x,y)
    x * y
  end

  def divide(x,y)
    return "NaN" if y.zero?
    x.to_f / y.to_f
  end
end