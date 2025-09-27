ActiveAdmin.register Librarian do
  # Permite que os parâmetros (campos) sejam salvos no banco de dados.
  permit_params :name, :email, :password, :password_confirmation, :must_change_password

  # Define o que aparece na listagem (index)
  index do
    selectable_column
    id_column
    column :name
    column :email
    column "Troca Forçada?", :must_change_password
    column :created_at
    actions
  end

  # Define o formulário para Novo/Editar bibliotecário
  form do |f|
    f.inputs "Detalhes do Bibliotecário" do
      f.input :name
      f.input :email

      # Campos de Senha (importante para senhas provisórias)
      f.input :password
      f.input :password_confirmation

      # Campo para forçar a troca de senha
      f.input :must_change_password, label: "Forçar troca de senha no próximo login?"
    end
    f.actions
  end
end