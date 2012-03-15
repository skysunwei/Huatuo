class SubApartment < ActiveRecord::Base
  belongs_to :apartment
  belongs_to :area
end
