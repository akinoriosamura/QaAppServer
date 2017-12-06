class AddLowestPriceToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :l_price, :integer, null: false, default: 0
  end
end
