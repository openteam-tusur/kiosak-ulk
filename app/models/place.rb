class Place < ActiveRecord::Base

  has_many :temps, dependent: :destroy

  validates_presence_of :number
  validates_uniqueness_of :number

  scope :ordered, -> { order(:number) }
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
