class AddPvToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :pv, :integer, default: 0
  end
end
