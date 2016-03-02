class DateTemp < ActiveRecord::Base
  has_many :temps
end

# == Schema Information
#
# Table name: date_temps
#
#  id         :integer          not null, primary key
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
