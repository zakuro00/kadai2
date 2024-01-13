class BooksController < ApplicationController

  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])  
  end
  
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_show_path(@book.id), notice: "Book created successfully."
    else
      flash[:alert] = "errors prohibited this book from being saved:"
      @books = Book.all
      render :index
    end
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_show_path(@book.id)
    flash[:notice] = "Book was successfully updated."
    
  end
  
  def destroy
   @book = Book.find(params[:id])
   @book.destroy
   flash[:success] = "Book was successfully destroyed."
   redirect_to books_path(@book.id)
  end
 
  
  private
 
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
