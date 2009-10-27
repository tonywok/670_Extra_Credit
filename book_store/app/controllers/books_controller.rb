class BooksController < ApplicationController
layout 'store'

  def index
    @books = Book.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @books}
    end
  end
  
  def new
    @book = Book.new
    
    @book.authors.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book}
    end
  end

  def create
    @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        flash[:notice] = 'Book was successfully created.'
        format.html { redirect_to(@book) }
        format.xml  { render :xml => @book, :status => :created, :location => @book }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update 
    @book = Book.find(params[:id])
    if @book.update_attributes(params[:book])
      flash[:notice] = "Successfully updated Book"
      redirect_to books_path  
    else
      render :action => 'edit'
    end
  end
  
  def show
    @book = Book.find(params[:id])

    respond_to do |format|
      format.html 
      format.xml  { render :xml => @book }
    end
  end

end
