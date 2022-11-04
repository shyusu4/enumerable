# Create a class MyList that has an instance variable @list.
# In MyList implement a method #each that yields successive members of
# @list and uses the MyEnumerable module.

require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = []
    list.each { |arg| @list << arg }
  end

  def each
    @list.each { |value| yield value if block_given? }
  end
end
