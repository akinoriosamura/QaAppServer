class AddRoleToAdminUsers < ActiveRecord::Migration[5.1]
  def change
    # administer: 0, member: 1, professional: 2
    add_column :users, :role, :integer, null: false
  end
end
