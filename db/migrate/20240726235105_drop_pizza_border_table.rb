class DropPizzaBorderTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :pizza_borders
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
