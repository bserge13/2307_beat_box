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

  def third_node_count
    
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