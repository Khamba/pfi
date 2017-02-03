class CreatePatientDoctorCheckups < ActiveRecord::Migration
  def change
    create_table :patient_doctor_checkups do |t|
      t.references :doctor, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      t.date :date

      t.timestamps null: false
    end
  end
end
