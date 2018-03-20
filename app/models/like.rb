class Like < ApplicationRecord
  belongs_to :book, counter_cache: :likes_count, optional: true
  belongs_to :user, optional: true
end
