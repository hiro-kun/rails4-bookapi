class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.string :isbn_code
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
