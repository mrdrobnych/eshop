class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end
