class LinkedList

  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data) 
  end

  def count
    require 'pry'; binding.pry
  end

  def to_string
    
  end
end