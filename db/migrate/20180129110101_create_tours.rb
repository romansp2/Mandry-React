class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.float :price
      t.string :cover
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
