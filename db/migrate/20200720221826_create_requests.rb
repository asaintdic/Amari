class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :gender
      t.string :age
      t.string :clothing_size
      t.string :shoe_size
      t.text   :add_info
      
      t.integer :user_id
     
      t.timestamps null: false
    end
  end
end
