class PasswordChangesController < ApplicationController
  before_action :authenticate_librarian! # Garante que está logado
  before_action :require_password_change # Redireciona se não precisar trocar

  # Mostra o formulário de troca de senha
  def new
    # INICIALIZA O OBJETO PARA O FORMULÁRIO.
    @librarian = current_librarian
    @minimum_password_length = Librarian.password_length.min
  end
  # Processa a submissão do formulário
  def update
    @librarian = current_librarian

    # Aplica os novos parâmetros no objeto, mas ainda não salva.
    # O Devise cuida do hash da senha quando o save é chamado.
    @librarian.assign_attributes(librarian_params)

    # 1. VERIFICA SE O OBJETO É VÁLIDO (AQUI O DEVISE VALIDA A SENHA)
    if @librarian.valid?

      # 2. Se for VÁLIDO, salva a nova senha e criptografa.
      @librarian.save!

      # 3. Altera o status e reloga.
      @librarian.update_columns(must_change_password: false)
      bypass_sign_in @librarian
      redirect_to root_path, notice: "Sua senha foi atualizada com sucesso. Bem-vindo!"

    else
      # 4. Se for INVÁLIDO, os erros são anexados no @librarian e o código para no debugger.
      @minimum_password_length = Librarian.password_length.min
      render :new, status: :unprocessable_entity
    end
  end

  private

  def librarian_params
    # Permite apenas os campos necessários para troca de senha.
    params.require(:librarian).permit(:password, :password_confirmation)
  end

  def require_password_change
    # Se o campo for false, redireciona para a home
    unless current_librarian.force_password_change?
      redirect_to root_path
    end
  end
end