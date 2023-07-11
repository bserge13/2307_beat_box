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
    total_node = head_node_count + next_node_count 
  end

  def head_node_count
    head_node_count = 0
    if @head != nil
      head_node_count += 1
    end
    head_node_count
  end

  def next_node_count
    next_node_count = 0 
    if @head.next_node != nil
      next_node_count += 1
    end
    next_node_count
  end

  def to_string
    if @head.next_node == nil 
      head_string
    else
      head_string + " " + next_node_string 
    end
  end

  def head_string
    @head.data
  end

  def next_node_string
    @head.next_node.data
  end
end