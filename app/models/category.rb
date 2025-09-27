class Category < ApplicationRecord
  # Validação: o campo 'name' não pode ser vazio
  validates :name, presence: true, uniqueness: true

  # Método para exibir o nome da categoria de forma amigável
  def to_s
    name
  end
end