class RemoveColumnFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :product_id, :string
    remove_column :orders, :quantity, :string
  end
end
