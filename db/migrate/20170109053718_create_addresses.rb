class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :addressable, index: true, polymorphic: true
      t.string :state
      t.string :city
      t.string :pincode
      t.text :address_lines

      t.timestamps null: false
    end
  end
end
