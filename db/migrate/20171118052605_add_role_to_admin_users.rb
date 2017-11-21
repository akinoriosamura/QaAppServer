class AddRoleToAdminUsers < ActiveRecord::Migration[5.1]
  def change
    # administer: 0, member: 1, questioner: 2, professional: 3
    add_column :users, :role, :integer, null: false, default: 1
  end
end
