class AddTargetIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :target_id, :integer
  end
end
