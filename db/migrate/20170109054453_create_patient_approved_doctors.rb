class CreatePatientApprovedDoctors < ActiveRecord::Migration
  def change
    create_table :patient_approved_doctors do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
