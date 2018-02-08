class CreateExhibits < ActiveRecord::Migration[5.0]
  def change
    create_table :exhibits do |t|

      t.timestamps
      t.integer :e_user_id, index: true
      t.references :book
    end
  end
end
