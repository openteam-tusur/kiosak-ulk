class Temp < ActiveRecord::Base
  belongs_to :place
  belongs_to :date_temp
end

# == Schema Information
#
# Table name: temps
#
#  id           :integer          not null, primary key
#  temperature  :string
#  date_temp_id :integer
#  place_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
