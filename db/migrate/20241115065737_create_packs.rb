class CreatePacks < ActiveRecord::Migration[7.2]
  def change
    create_table :packs do |t|
      t.string :name

      t.timestamps
    end
  end
end
