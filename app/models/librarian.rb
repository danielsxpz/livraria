class Librarian < ApplicationRecord
  # Inclui os módulos Devise necessários:
  devise :database_authenticatable,
       :recoverable, :rememberable, :validatable

  def self.skip_password_change?
    false
  end

  # Método para verificar se a senha deve ser trocada
  def password_required?
    # A senha é sempre obrigatória, a menos que seja uma atualização
    # e o campo encrypted_password não esteja vazio.
    # Esta é a implementação padrão do Devise.
    super
  end

  # Lógica para verificar se deve ser redirecionado
  def force_password_change?
    must_change_password?
  end

  # 1. Permite que o ActiveAdmin use estes atributos para busca e ordenação.
  def self.ransackable_attributes(auth_object = nil)
    # Lista de atributos de Devise que, embora sensíveis, o ActiveAdmin precisa
    # acessar para montar seus filtros e colunas.
    # Apenas os incluímos aqui para satisfazer o Ransack, mas o usuário não os verá.
    %w[
      id
      name
      email
      must_change_password
      created_at
      updated_at
      
      # Adicionando os campos do Devise que o Ransack exige:
      encrypted_password        # Embora criptografada, o Ransack pode exigir
      reset_password_token
      reset_password_sent_at
      remember_created_at
    ]
  end

  # 2. Permite que o ActiveAdmin use associações para busca e ordenação.
  def self.ransackable_associations(auth_object = nil)
    []
  end
end