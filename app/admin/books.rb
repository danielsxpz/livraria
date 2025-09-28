# app/admin/books.rb

ActiveAdmin.register Book do
  # ATUALIZADO: Inclui status e observacoes
  permit_params :title, :author, :isbn, :stock_quantity, :category_id, :status, :observations 

  index do
    selectable_column
    id_column
    column :title
    column :author
    column "Categoria", :category 
    column "Status", :status do |book|
      status_tag book.status # Exibe com estilo (disponível/emprestado)
    end
    column "Estoque", :stock_quantity
    column :observations
    actions
  end

  form do |f|
    f.inputs "Detalhes do Livro" do
      f.input :title
      f.input :author
      f.input :category, as: :select, collection: Category.order(:name), label: "Categoria"
      
      # Campo para o status (Dropdown com os valores do ENUM)
      f.input :status, as: :select, collection: Book.statuses.keys.map { |s| [s.titleize, s] }
      
      f.input :isbn
      f.input :stock_quantity, label: "Quantidade em Estoque"
      f.input :observations, as: :text # Campo Opcional
    end
    f.actions
  end
  
  # ...
end