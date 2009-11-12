class StoreController < ApplicationController
  def index
    @books = Book.find(:all)
    @cart = find_cart
  end
  
  def add_to_cart
    book = Book.find(params[:id])
    @cart = find_cart
    @current_item = @cart.add_book(book)
    
    redirect_to(store_path)
  end
  
  def empty_cart
    session[:cart] = nil
    redirect_to_index
  end
  
  private

  def find_cart
    session[:cart] ||= Cart.new
  end
end