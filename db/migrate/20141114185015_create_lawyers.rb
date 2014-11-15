class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.string :name
      t.integer :experience
      t.integer :city_id
      t.decimal :rating, precision: 3, scale: 1
      t.timestamps
    end
  end
end
