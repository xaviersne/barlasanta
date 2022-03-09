class AddRoleToClientDevise < ActiveRecord::Migration[5.2]
  def change
    add_column :client_devises, :role, :integer, default:0
  end
end
