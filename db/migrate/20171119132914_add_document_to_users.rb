class AddDocumentToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :document, :text
  end
end
