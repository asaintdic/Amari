class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :clothing_size
      t.string :shoe_size
      t.string :top
      t.string :shoe
      t.string :outerwear
      t.string :bag
      t.string :accessories
      t.integer :user_id
     
      t.timestamps null: false
    end
  end
end
