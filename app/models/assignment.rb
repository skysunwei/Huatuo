class Assignment < ActiveRecord::Base
  belongs_to :apartment
  belongs_to :user
end
