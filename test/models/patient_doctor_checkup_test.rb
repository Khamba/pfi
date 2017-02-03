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

require 'test_helper'

class PatientDoctorCheckupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
