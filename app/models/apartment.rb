class Apartment < ActiveRecord::Base
  has_many :sub_apartments
end
