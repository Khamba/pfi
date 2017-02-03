# == Schema Information
#
# Table name: reports
#
#  id             :integer          not null, primary key
#  doctor_comment :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Report < ActiveRecord::Base
end
