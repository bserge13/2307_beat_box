require 'rspec'
require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do 

  describe "#Iteration1, LinkedList" do 
    it 'exists with readable attributes' do 
      list = LinkedList.new

      expect(list.head).to eq(nil)
      list.append("doop")
      expect(list).to eq(list)
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
      expect(list.count).to eq(1)
      expect(list.to_string).to eq("doop")
    end

    it 'adds multiple nodes to lniked list' do
      list = LinkedList.new

      expect(list.head).to eq(nil)
      list.append("doop")
      expect(list).to eq(list)
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
      list.append("deep")
      expect(list).to eq(list)
      expect(list.head.next_node).to eq(list.head.next_node)
      expect(list.count).to eq(2)
      expect(list.to_string).to eq("doop deep")
    end
  end

  describe "#Iteration 2, LinkedList" do 
    it 'can add nodes in specific order' do
      list = LinkedList.new

      list.append("plop")
      expect(list.to_string).to eq("plop")
      list.append("suu")
      expect(list.to_string).to eq("plop suu")
      list.prepend("dop")
      expect(list.to_string).to eq("dop plop suu")
      # require 'pry'; binding.pry
      expect(list.count).to eq(3)
      # list.insert(1, "woo")
      # expect(list.to_string).to eq("dop woo plop suu")
    end
  end
end