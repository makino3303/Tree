class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :title
      t.string :food1
      t.string :food2
      t.string :food3
      t.string :time
      t.timestamps
    end
  end
end
