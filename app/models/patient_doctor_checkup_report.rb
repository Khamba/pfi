# == Schema Information
#
# Table name: patient_doctor_checkup_reports
#
#  id                        :integer          not null, primary key
#  report_id                 :integer
#  patient_doctor_checkup_id :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class PatientDoctorCheckupReport < ActiveRecord::Base
  belongs_to :report
  belongs_to :patient_doctor_checkup
end
