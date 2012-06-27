class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.string :po_header_id
      t.string :integer
      t.string :item_id
      t.string :integer
      t.float :vlrUnit

      t.timestamps
    end
  end
end
