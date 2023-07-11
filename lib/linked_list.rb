class LinkedList

  attr_reader :head
  def initialize
    @head = nil
  end
  
  def append(data)
    if @head == nil 
      @head = Node.new(data) 
    else 
      current_node = @head
      new_node = Node.new(data)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end 
  end
  
  def prepend(data)
    if @head == nil
      @head = Node.new(data)
    else 
      current_node = Node.new(data)
      current_node.next_node = @head
      @head = current_node
    end
  end

  def insert(position, data)
    # nodes = {:head => 1, :head.next_node = 2, :head.next_node.next_node => 3, :head.next_node.next_node.next_node => 4}
    # if position == nodes.values
  end

  def count
    node_counter = 0 
    if @head != nil && @head.next_node == nil 
      node_counter += 1
    elsif @head != nil && @head.next_node != nil && @head.next_node.next_node == nil 
      node_counter += 2
    elsif @head != nil && @head.next_node != nil && @head.next_node.next_node != nil 
      node_counter += 3
    end
    node_counter
  end

  def to_string
    if @head.next_node == nil 
      head_string
    elsif @head.next_node.next_node == nil
      head_string + " " + next_node_string 
    else 
      head_string + " " + next_node_string + " " + third_node_string
    end 
  end
  
  def head_string
    @head.data
  end
  
  def next_node_string
    @head.next_node.data
  end
  
  def third_node_string
    @head.next_node.next_node.data
  end

end