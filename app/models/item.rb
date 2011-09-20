class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :bids
  validates_presence_of :user
  validates_presence_of :category
end
