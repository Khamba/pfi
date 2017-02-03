# == Schema Information
#
# Table name: doctors
#
#  id                 :integer          not null, primary key
#  name               :string
#  aadhar_number      :string
#  mobile_number      :string
#  email              :string
#  crypted_password   :string
#  password_salt      :string
#  persistence_token  :string
#  login_count        :integer          default("0"), not null
#  failed_login_count :integer          default("0"), not null
#  last_request_at    :datetime
#  current_login_at   :datetime
#  last_login_at      :datetime
#  current_login_ip   :string
#  last_login_ip      :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
