class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_product(book)
    current_item = @items.find {|item| item.book == book}
    if current_item
      current_item.increment_quantity
    else
      current_item = CartItem.new(book)
      @items << current_item
    end
    current_item
  end

  def remove_product(book)
    current_item = @items.find {|item| item.book == book}
    current_item.decrement_quantity
    if current_item.quantity == 0
      @items.delete(current_item)
    end
    current_item
  end

  def total_items
    @items.sum { |item| item.quantity }
  end

  def total_price
    @items.sum { |item| item.price }
  end
end

