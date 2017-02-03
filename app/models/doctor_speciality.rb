# == Schema Information
#
# Table name: doctor_specialities
#
#  id            :integer          not null, primary key
#  doctor_id     :integer
#  speciality_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class DoctorSpeciality < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :speciality
end
