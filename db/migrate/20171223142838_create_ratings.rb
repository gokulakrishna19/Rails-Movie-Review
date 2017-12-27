class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :rate
      t.text :comment

      t.timestamps
    end
  end
end
