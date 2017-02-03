# == Schema Information
#
# Table name: patients
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

class Patient < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field = :aadhar_number

    c.merge_validates_format_of_email_field_options(allow_blank: true, allow_nil: true)

    c.validate_login_field = false
  end

  validates :name, presence: true
  validates_format_of :aadhar_number, with: /\A\d{12}\z/, message: "should be an Aadhar Number of 12 digits"
  validates_format_of :mobile_number, with: /\A\d{10}/, message: "should be a 10 digit number"

  before_validation :strip_aadhar_number_of_spaces

  private

    def strip_aadhar_number_of_spaces
      self.aadhar_number.gsub!(/\s+/, "")
    end

end
