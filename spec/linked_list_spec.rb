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
      # require 'pry'; binding.pry
    end

    # it 'adds multiple nodes to lniked list' do
    #   list = LinkedList.new

    #   expect(list.head).to eq(nil)
    #   list.append("doop")
    #   expect(list).to eq(list)
    #   expect(list.head.data).to eq("doop")
    #   expect(list.head.next_node).to eq(nil)
    #   expect(list.count).to eq(1)
    #   expect(list.to_string).to eq("doop")

    # end
  end
end