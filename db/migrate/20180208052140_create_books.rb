class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|

      t.timestamps
      t.string :title
      t.string :sub_title
      t.integer :price
      t.text :description
      t.string :content
      t.string :sold?
    end
  end
end
