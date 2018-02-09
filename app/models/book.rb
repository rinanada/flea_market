class Book < ApplicationRecord
  has_one :exhibit
  has_one :order

  mount_uploader :content, BookUploader
end
