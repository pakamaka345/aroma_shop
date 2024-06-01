class DropOrderDetails < ActiveRecord::Migration[6.0]
  def up
    drop_table :order_details
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
