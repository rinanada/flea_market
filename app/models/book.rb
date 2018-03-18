class Book < ApplicationRecord
  has_one :exhibit
  has_one :order
  has_many :likes, dependent: :destroy

  mount_uploader :content, BookUploader
  acts_as_taggable_on :categories

  def tax
    (price + 200) * 0.08.round
  end

  def total_price
    (price + 200) * 1.08.round
  end

  # def likes_user
  #   likes.user.
  # end
end
