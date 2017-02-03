# == Schema Information
#
# Table name: patient_approved_doctors
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  doctor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PatientApprovedDoctor < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
end
