# frozen_string_literal: true

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
end
