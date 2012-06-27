class OrderLine < ActiveRecord::Base
  attr_accessible :integer, :integer, :item_id, :po_header_id, :vlrUnit
end
