class CreateMains < ActiveRecord::Migration[7.2]
  def change
    create_table :mains do |t|
      t.timestamps
    end
  end
end
