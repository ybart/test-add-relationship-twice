class CreateBasketFruits < ActiveRecord::Migration
  def change
    create_table :basket_fruits do |t|
      t.integer :fruit_id
      t.integer :basket_id

      t.timestamps
    end
  end
end
