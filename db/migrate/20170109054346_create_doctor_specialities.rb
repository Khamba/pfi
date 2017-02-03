class CreateDoctorSpecialities < ActiveRecord::Migration
  def change
    create_table :doctor_specialities do |t|
      t.references :doctor, index: true, foreign_key: true
      t.references :speciality, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
