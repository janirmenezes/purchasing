class CreateOrderHeaders < ActiveRecord::Migration
  def change
    create_table :order_headers do |t|
      t.string :order
      t.integer :vendor_id
      t.text :aviso

      t.timestamps
    end
  end
end
