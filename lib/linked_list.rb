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
    node_counter = 0
    if @head != nil
      node_counter += 1
    end
    node_counter
  end

  def to_string
    @head.data 
  end
end