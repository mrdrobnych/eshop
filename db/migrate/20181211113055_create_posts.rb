class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :body
      t.integer :user_id
      t.integer :product_id
      t.integer :star

      t.timestamps
    end
  end
end
