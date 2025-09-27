class ApplicationController < ActionController::Base
  # Sobrescreve o método do Devise para redirecionamento após o login
  def after_sign_in_path_for(resource)
    if resource.is_a?(Librarian) && resource.force_password_change?
      new_password_change_path # Redireciona para o formulário de troca de senha forçada
    else
      super # Comportamento padrão (geralmente root_path)
    end
  end

  allow_browser versions: :modern
end