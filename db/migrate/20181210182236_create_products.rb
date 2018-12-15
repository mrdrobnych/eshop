class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :categorie_id
      t.float :price
      t.integer :pcount

      t.timestamps
    end
  end
end
