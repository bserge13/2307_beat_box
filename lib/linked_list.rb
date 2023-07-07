class LinkedList

  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil 
      @head = Node.new(data) 
    else 
      @head.next_node = Node.new(data)
    end 
  end

  def count
    if @head.next_node == nil
      1
    end
  end

  def to_string
    @head.data 
  end
end