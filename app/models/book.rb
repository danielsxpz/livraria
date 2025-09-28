class Book < ApplicationRecord
  # Associações (mantida do passo anterior)
  belongs_to :category 

  # Enum para o campo status (disponível: 0, emprestado: 1)
  enum status: { available: 0, borrowed: 1 }

  # ==========================================================
  # VALIDAÇÕES (Garantindo todos os campos obrigatórios)
  # ==========================================================
  validates :title, presence: true
  validates :author, presence: true
  validates :category, presence: true # Garante que category_id não seja nulo
  validates :status, presence: true
  validates :stock_quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
  
  # A coluna 'isbn' (que você tinha) pode ser usada para um ID único se necessário.
  # Se você quer um campo de ID que o bibliotecário insira (além do ID do DB), 
  # precisaria criar uma coluna como 'library_id:string' no modelo.
end