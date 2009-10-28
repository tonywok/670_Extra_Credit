class ReviewsController < ApplicationController
layout 'store'

  def index 
    @book = Book.find(params[:book_id])
    @reviews = Review.find_all_by_book_id(params[:book_id]);
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reviews}
    end
  end
  
  def new
    @review = Review.new
    @book = Book.find(params[:book_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book}
    end
  end
  
  def create
    @review = Review.new(params[:review])

    respond_to do |format|
      if @review.save
        flash[:notice] = 'Review was successfully created.'
        format.html { redirect_to(books_path) }
        format.xml  { render :xml => @review, :status => :created, :location => @review }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @review.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end