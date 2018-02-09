class Book < ApplicationRecord
  has_one :exhibit
  belongs_to :order, optional: true
end
