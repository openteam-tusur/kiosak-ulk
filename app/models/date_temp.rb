class DateTemp < ActiveRecord::Base
  has_many :temps

  validates_uniqueness_of :date_title
  accepts_nested_attributes_for :temps, :allow_destroy => true

  scope :ordered, -> { order('date_title desc') }
end

# == Schema Information
#
# Table name: date_temps
#
#  id         :integer          not null, primary key
#  date_title :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
