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

require 'test_helper'

class PatientDoctorCheckupReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
