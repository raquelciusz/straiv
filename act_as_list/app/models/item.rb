class Item < ApplicationRecord
  acts_as_list :column => 'position'
end
