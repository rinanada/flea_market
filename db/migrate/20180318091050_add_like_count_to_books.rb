class AddLikeCountToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :likes_count, :integer
  end
end
