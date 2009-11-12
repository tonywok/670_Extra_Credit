class CartItem
  
  attr_reader :book, :quantity
  
  def initialize(book)
    @book = book
    @quantity = 1
  end
  
  def increment_quantity
    @quantity += 1
  end
  
  def title
    @book.title
  end
  
  def decrement_quantity
    @quantity -= 1 if @quantity > 0
  end
  
  def calculate_price
    @book.price * @quantity
  end
end
