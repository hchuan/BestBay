class Bid < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  validates_presence_of :user
  validates_presence_of :item
end
