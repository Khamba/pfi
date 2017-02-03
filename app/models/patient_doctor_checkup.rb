# == Schema Information
#
# Table name: patient_doctor_checkups
#
#  id         :integer          not null, primary key
#  doctor_id  :integer
#  patient_id :integer
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PatientDoctorCheckup < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
end
