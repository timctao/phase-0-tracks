# 6.5 Mandatory Pairing
# Pair w/ Jacob Williams

class TodoList
  def initialize(input)
    @items = input
  end

  def get_items
    @items
  end

  def add_item(item)
    @items << item
  end

  def delete_item(item)
    @items.delete(item)
  end

  def get_item(ind)
    @items[ind]
  end
end