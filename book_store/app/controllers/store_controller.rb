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
  
  def remove_from_cart
    begin
      book = Book.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid product #{params[:id]}")
      redirect_to_index("Invalid book")
    else
      @cart = find_cart
      @current_item = @cart.remove_book(book)
      redirect_to(store_path)
    end
  end
  
  def empty_cart
    session[:cart] = nil
    redirect_to(store_path)
  end
  
  private

  def find_cart
    session[:cart] ||= Cart.new
  end
end