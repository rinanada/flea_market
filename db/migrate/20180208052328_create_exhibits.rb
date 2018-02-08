class CreateExhibits < ActiveRecord::Migration[5.0]
  def change
    create_table :exhibits do |t|

      t.timestamps
      t.references :user, index: true
      t.references :book, index: true
    end
  end
end
