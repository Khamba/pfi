# == Schema Information
#
# Table name: hospitals
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hospital < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates_associated :address, presence: true

  has_many :doctor_hospitals, dependent: :destroy
  has_many :doctors, through: :doctor_hospitals
  has_one :address, as: :addressable, dependent: :destroy

  accepts_nested_attributes_for :address

end
