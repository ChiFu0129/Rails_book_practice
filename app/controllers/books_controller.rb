class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "新增書目成功！"
      redirect_to "/books"
    else
      render :new
    end
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def edit
    @book = Book.find_by(id: params[:id])
  end

  def update
    @book = Book.find_by(id: params[:id])

    if @book.update(book_params)
        flash[:notice] = "書目已更新!"
        redirect_to '/books'
    else
        render :edit
    end
end

def destroy
  @book = Book.find_by(id: params[:id])
  @book.destroy

  flash[:notice] = "書目已刪除!"
  redirect_to '/books'
end

  private
  def book_params
    params.require(:book).permit(:name, :date, :price, :page, :ISBN)
  end

end
