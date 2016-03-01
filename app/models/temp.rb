class Temp < ActiveRecord::Base
  belongs_to :place
  belongs_to :date_temp
end
