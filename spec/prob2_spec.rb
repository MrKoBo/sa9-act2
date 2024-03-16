# spec/prob2_spec.rb
require 'prob2'

RSpec.describe TodoList do
  let(:todolist) { TodoList.new }

  describe "#add" do
    it "adds a todo to the list" do
      length = todolist.todos.length
      todolist.add("New Todo")
      new_length = todolist.todos.length
      expect(new_length).to eq(length + 1)
    end
  end
  describe "#remove" do
    it "removes a todo from the list" do
      old_item = "Old Todo"
      todolist.remove(old_item)
      expect(todolist.todos).not_to include(old_item)
    end
  end
  describe "#todos" do
    it "returns all todos" do
      todos_list = todolist.todos
      expect(todolist.todos).to eq(todos_list)
    end
  end
end
