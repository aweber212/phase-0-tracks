class TodoList
  
attr_accessor :get_item

  def initialize(item1, item2)
    @get_item = []
    p "Initializing To Do List"
    @item1 = item1
    @item2 = item2
    @get_item.push(item1, item2)
    p get_item
  end
  
  def add_item(item)
    @item = item
    @get_item == get_item.push(item)
    p get_item
  end
  
  def delete_item(del_item)
    @del_item = del_item
    @get_item == get_item.delete(del_item)
    p get_item
  end
  
  def get_items
    p get_item
  end
  
end

describe TodoList do
  let(:list) { TodoList.new("do the dishes", "mow the lawn") }

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item[0]).to eq "do the dishes"
  end
end