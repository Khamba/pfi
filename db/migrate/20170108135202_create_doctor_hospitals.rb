class CreateDoctorHospitals < ActiveRecord::Migration
  def change
    create_table :doctor_hospitals do |t|
      t.references :doctor, index: true, foreign_key: true
      t.references :hospital, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
