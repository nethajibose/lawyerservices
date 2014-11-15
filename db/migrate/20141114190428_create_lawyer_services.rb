class CreateLawyerServices < ActiveRecord::Migration
  def change
    create_table :lawyer_services do |t|
      t.string :code
      t.string :service_name
      t.string :amount
      t.integer :lawyer_id
      t.timestamps
    end
  end
end
