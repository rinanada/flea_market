class AddColumnToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :order_id, :integer

    add_column :orders, :book_id, :integer
  end
end
