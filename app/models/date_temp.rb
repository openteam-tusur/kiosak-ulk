class DateTemp < ActiveRecord::Base
  has_many :temps, dependent: :destroy

  validates_uniqueness_of :date_title
  accepts_nested_attributes_for :temps, :allow_destroy => true

  scope :ordered, -> { order('date_title desc') }
  scope :actual, -> { ordered.limit(1).first }

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
