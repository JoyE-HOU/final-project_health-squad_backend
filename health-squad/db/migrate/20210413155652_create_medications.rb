class CreateMedications < ActiveRecord::Migration[6.1]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :description
      t.string :dosage
      t.string :directions
      t.integer :count

      t.timestamps
    end
  end
end
