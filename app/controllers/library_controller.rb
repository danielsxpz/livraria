class LibraryController < ApplicationController
  def index
    # Esta linha busca todos os livros no banco de dados
    # e os armazena na variável @books para a view usar.
    @books = Book.all.to.a
  end
end