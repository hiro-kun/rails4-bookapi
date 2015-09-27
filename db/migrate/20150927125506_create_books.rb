class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn_code
      t.string :book_name
      t.integer :price
      t.string :author

      t.timestamps null: false
    end
  end
end
