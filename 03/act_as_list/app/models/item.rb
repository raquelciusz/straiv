class Item < ApplicationRecord
  acts_as_list :column => 'position'
  validates :id, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
