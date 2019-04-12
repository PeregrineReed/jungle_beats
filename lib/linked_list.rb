require './lib/node'

class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      assign_last(data)
    end
    @count += 1
  end

  def to_string
    output = []
    node = @head
    count.times do
      if node != nil
        output << node.data
        node = node.next_node
      end
    end
    output.size > 1 ? output.join(' ') : output[0]
  end

  def find(index, nodes)
    node = @head
    index.times do
      node = node.next_node
    end
    output = []
    nodes.times do
      if node != nil
        output << node.data
        node = node.next_node
      end
    end
    output.size > 1 ? output.join(' ') : output[0]
  end

  def includes?(beat)
    node = @head
    @count.times do
      if node.data == beat
        return true
        break
      else
        node = node.next_node
      end
    end
    return false
  end

  def pop
    node = @head
    (@count - 2).times do
      node = node.next_node
    end
    data = node.next_node.data
    node.next_node = nil
    @count -= 1
    data
  end

  def prepend(data)
    node = Node.new(data)
    node.next_node = @head
    @head = node
    @count += 1
  end

  def insert(index, data)
    counter = index - 1
    new_node = Node.new(data)
    node = @head
    counter.times do
      node = node.next_node
    end
    new_node.next_node = node.next_node
    node.next_node = new_node
    @count += 1
  end

  private

  def assign_last(data)
    node = @head
    @count.times do
      if node != nil
        if node.next_node == nil
          node.next_node = Node.new(data)
        end
        node = node.next_node
      end
    end
  end

end
