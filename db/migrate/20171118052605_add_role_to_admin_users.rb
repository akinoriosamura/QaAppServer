class AddRoleToAdminUsers < ActiveRecord::Migration[5.1]
  def change
    # member: 0, questioner: 1, professional: 2
    add_column :users, :role, :integer, null: false, default: 0
  end
end
