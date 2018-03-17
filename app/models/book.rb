class Book < ApplicationRecord
  has_one :exhibit
  has_one :order

  mount_uploader :content, BookUploader

  def tax
    (price + 200) * 0.08.round
  end

  def total_price
    (price + 200) * 1.08.round
  end
end
