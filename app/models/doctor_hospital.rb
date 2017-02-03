# == Schema Information
#
# Table name: doctor_hospitals
#
#  id          :integer          not null, primary key
#  doctor_id   :integer
#  hospital_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DoctorHospital < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :hospital
end
