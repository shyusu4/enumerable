module MyEnumerable
  def all?
    value = true
    each { |number| return false unless yield number }
    value
  end

  def any?
    value = false
    each { |number| return true if yield number }
    value
  end

  def filter
    value = []
    each { |number| value.push(number) if yield number }
    value
  end
end
