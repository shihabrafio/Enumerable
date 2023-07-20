# MyEnumerable
module MyEnumerable
  def all?
    each { |items| return false unless yield(items) }
    true
  end

  def any?
    each { |items| return true if yield(items) }
    false
  end

  def filter
    result = []
    each { |items| result << items if yield(items) }
    result
  end

  def max
    max = first
    each { |items| max << items if yield(items) > yield(max) }
    max
  end
end
