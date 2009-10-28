class StoreController < ApplicationController
  def index
    @products = Product.find_products_for_sale
    @cart = find_cart
    @count = increment_count
  end
  
  def add_to_cart
    product = Product.find(params[:id])
	  @cart = find_cart
	  @current_item = @cart.add_product(product)
	  session[:counter] = 0
	  respond_to do |format|
	    format.js if request.xhr?
	    format.html {redirect_to_index}
	  end
	rescue ActiveRecord::RecordNotFound 
	  logger.error("Attempt to access invalid product #{params[:id]}")
	  redirect_to_index("Invalid product")
  end
  
  def remove_from_cart
    begin
      product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid product #{params[:id]}")
      redirect_to_index("Invalid product")
    else
      @cart = find_cart
      @current_item = @cart.remove_product(product)
      respond_to do |format|
        format.js if request.xhr?
        format.html {redirect_to_index}
      end
    end
  end
  
  def empty_cart
    session[:cart] = nil
    redirect_to_index
  end
  
  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
  
private

  def find_cart
    session[:cart] ||= Cart.new
  end
  
  def redirect_to_index(msg = nil)
    flash[:notice] = msg
    redirect_to :action => 'index'
  end

end
