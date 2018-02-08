class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|

      t.timestamps
      t.integer :o_user_id, index: true
      t.references :book
    end
  end
end
