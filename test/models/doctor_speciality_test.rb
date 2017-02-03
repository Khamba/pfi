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

require 'test_helper'

class DoctorSpecialityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
