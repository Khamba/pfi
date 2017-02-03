# == Schema Information
#
# Table name: specialities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Speciality < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

end
