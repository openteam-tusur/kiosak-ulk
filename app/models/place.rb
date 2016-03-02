class Place < ActiveRecord::Base
  has_many :temps
end

# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
