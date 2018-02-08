class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|

      t.timestamps
      t.references :user, index: true
    end
  end
end
