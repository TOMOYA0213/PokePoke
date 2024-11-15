class CreateRelations < ActiveRecord::Migration[7.2]
  def change
    create_table :relations do |t|
      t.integer :main_card_id
      t.integer :sub_card_id
      t.integer :point

      t.timestamps
    end
  end
end
