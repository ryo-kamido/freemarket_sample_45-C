class Item < ApplicationRecord
  has_one_attached :avatar
  has_one :trade
  belongs_to :user
end
