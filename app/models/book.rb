class Book < ApplicationRecord
  has_one :exhibit
  belongs_to :order, optional: true

  mount_uploader :content, BookUploader
end
