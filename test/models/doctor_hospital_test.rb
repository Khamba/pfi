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

require 'test_helper'

class DoctorHospitalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
