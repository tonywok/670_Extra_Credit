class ReviewsController < ApplicationController
layout 'store'

  def index 
    @reviews = Review.Find(1);
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reviews}
    end
  end

end