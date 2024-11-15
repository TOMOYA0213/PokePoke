class CreateIncludes < ActiveRecord::Migration[7.2]
  def change
    create_table :includes do |t|
      t.integer :card_id
      t.integer :pack_id

      t.timestamps
    end
  end
end
