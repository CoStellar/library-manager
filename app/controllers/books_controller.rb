class BooksController < ApplicationController
  swagger_controller :books, 'Books'
  respond_to :json

  swagger_api :index do
    summary 'List all books'
    notes 'Returns a list of all books'
  end

  swagger_api :search do
    summary 'Search for books'
    param :query, :search, :string, :optional, 'Search term'
    response :ok, 'Success', :Book
    response :unprocessable_entity, 'Invalid request'
  end

  swagger_api :show do
    summary 'Show book details'
    param :path, :id, :integer, :required, 'Book ID'
    response :ok, 'Success', :Book
    response :not_found, 'Book not found'
  end

  swagger_api :new do
    summary 'New book form'
    notes 'Returns a new book object for creating a new book'
  end

  swagger_api :create do
    summary 'Create a new book'
    param :form, :title, :string, :required, 'Title'
    param :form, :author, :string, :required, 'Author'
    param :form, :genre, :string, :required, 'Genre'
    param :form, :isbn, :string, :required, 'ISBN'
    param :form, :description, :string, :optional, 'Description'
    response :ok, 'Success', :Book
    response :unprocessable_entity, 'Invalid request'
  end

  swagger_api :edit do
    summary 'Edit book form'
    param :path, :id, :integer, :required, 'Book ID'
  end

  swagger_api :update do
    summary 'Update a book'
    param :path, :id, :integer, :required, 'Book ID'
    param :form, :title, :string, :required, 'Title'
    param :form, :author, :string, :required, 'Author'
    param :form, :genre, :string, :required, 'Genre'
    param :form, :isbn, :string, :required, 'ISBN'
    param :form, :description, :string, :optional, 'Description'
    response :ok, 'Success', :Book
    response :unprocessable_entity, 'Invalid request'
  end

  swagger_api :destroy do
    summary 'Delete a book'
    param :path, :id, :integer, :required, 'Book ID'
    response :see_other, 'Redirect to book list'
    response :not_found, 'Book not found'
  end

  def index
    @books = Book.all
    @borrowed_books = current_user.borrowings.includes(:copy => :book).map(&:copy).uniq
  end

  def search
    if params[:search].blank?
      redirect_to list_path and return
    else
      @parameter = params[:search].downcase
      @results = Book.all.where("lower(title || author || genre) LIKE :search" , search: "%#{@parameter}%")
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.copies.destroy_all
    @book.reviews.destroy_all
    @book.reservations.destroy_all
    @book.destroy

    redirect_to list_path, status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :isbn, :description)
  end
end
