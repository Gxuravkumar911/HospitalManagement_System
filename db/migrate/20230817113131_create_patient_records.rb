class CreatePatientRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_records do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
