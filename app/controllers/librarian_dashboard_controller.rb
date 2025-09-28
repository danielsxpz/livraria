class LibrarianDashboardController < ApplicationController
  # Garante que apenas bibliotecários logados podem ver esta página.
  before_action :authenticate_librarian!

  # Este é o método que corresponde à rota 'get 'dashboard', to: 'librarian_dashboard#index''
  def index
    # Não precisamos de lógica aqui, apenas renderizar a view.
    # A view já tem acesso ao 'current_librarian' graças ao Devise.
  end
end