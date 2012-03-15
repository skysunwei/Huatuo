class Book < ActiveRecord::Base
  belongs_to :sub_apartment
  belongs_to :user
end
