# Create a class MyList that has an instance variable @list.
# In MyList implement a method #each that yields successive members of
# @list and uses the MyEnumerable module.

require_relative 'my_enumerable'

class MyList
  @list = []
  include MyEnumerable

  def each(&block)
    @list.each(&block)
  end

  def initialize(*lis)
    @list = lis
  end
end

puts list = MyList.new(1, 2, 3, 4)
# => #<MyList: @list=[1, 2, 3, 4]>

puts(list.all? { |e| e < 5 })
# => true
puts(list.all? { |e| e > 5 })
# => false

puts(list.any? { |e| e == 2 })
# => true
puts(list.any? { |e| e == 5 })
# => false

puts(list.filter?(&:even?))
# => [2, 4]
