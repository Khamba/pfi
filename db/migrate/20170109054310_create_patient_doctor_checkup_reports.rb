class CreatePatientDoctorCheckupReports < ActiveRecord::Migration
  def change
    create_table :patient_doctor_checkup_reports do |t|
      t.references :report, index: { name: "checkup_report_index" }, foreign_key: true
      t.references :patient_doctor_checkup, index: { name: "patient_doctor_checkup_index" }, foreign_key: true

      t.timestamps null: false
    end
  end
end
