ActiveAdmin.register Category do
  # 1. Permite que apenas o campo 'name' seja editado/salvo
  permit_params :name

  # 2. Configuração da tela de listagem (Index)
  index do
    selectable_column
    id_column
    column "Nome da Categoria", :name
    column :created_at
    actions
  end

  # 3. Configuração do formulário para Adicionar/Editar
  form do |f|
    f.inputs "Detalhes da Categoria" do
      # Adiciona o campo 'name'
      f.input :name, label: "Nome da Categoria"
    end
    f.actions
  end
  
  # 4. Ransack para busca e filtro
  def self.ransackable_attributes(auth_object = nil)
    %w[name created_at id]
  end

  # 5. Configuração da tela de visualização (Show)
  show do
    attributes_table do
      row "Nome da Categoria", :name
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end