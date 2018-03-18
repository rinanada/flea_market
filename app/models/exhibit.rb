class Exhibit < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :book, optional: true
  acts_as_taggable_on :categories
end
