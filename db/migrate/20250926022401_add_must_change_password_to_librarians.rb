class AddMustChangePasswordToLibrarians < ActiveRecord::Migration[8.0]
  def change
    add_column :librarians, :must_change_password, :boolean, default: true
  end
end