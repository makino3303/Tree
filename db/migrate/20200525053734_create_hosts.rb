class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :title
      t.string :food1
      t.string :food2
      t.string :food3
      t.string :subfood1
      t.string :subfood2
      t.string :subfood3
      t.string :seasoning1
      t.string :seasoning2
      t.string :seasoning3
      t.string :seasoning4
      t.string :seasoning5
      t.string :seasoning6
      t.string :image
      t.string :time
      t.timestamps
    end
  end
end
