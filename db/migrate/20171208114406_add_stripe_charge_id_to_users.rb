class AddStripeChargeIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :stripe_charge_id, :string
  end
end
