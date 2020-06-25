class AddColumnToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :delivery_fee_id, :integer, null: false
    add_column :products, :delivery_way_id, :integer, null: false
  end
end
