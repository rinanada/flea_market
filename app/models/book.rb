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

  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

end
