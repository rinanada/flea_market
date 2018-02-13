class CreateUserDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :user_details do |t|

      t.timestamps
      t.string :lastname
      t.string :firstname
      t.integer :postalcode
      t.integer :callnumber
      t.text :place
      t.references :user, index: true
    end
  end
end
