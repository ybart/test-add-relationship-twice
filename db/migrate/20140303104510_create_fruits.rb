class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :type
      t.timestamps
    end
  end
end
