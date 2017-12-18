class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.references :user, foreign_key: true
      t.string :filename
      t.binary :file, :limit => 500.kilobyte

      t.timestamps
    end
  end
end
