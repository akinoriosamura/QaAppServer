class AddTargetIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :target_id, :integer
    add_column :posts, :price, :integer, default: 100
  end
end

