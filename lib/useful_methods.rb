module Useful_Methods

  attr_reader :max_capacity
  attr_accessor :current_items

  def initialize(max_capacity = 10)
    @max_capacity = max_capacity
    @current_items = []
  end

  def full?
    @current_items.length == max_capacity
  end

  def add_item
    @current_items << Box.new
  end

  def add_item(first_name, last_name)
    if !full?
      @current_items << Box.new(owner = Occupant.new(first_name, last_name))
    end
  end

  def remove_item
    @current_items.pop
    @current_items
  end
end
