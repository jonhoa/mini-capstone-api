class AddSuppleridToSupplier < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :supplier_id, :integer
  end
end
