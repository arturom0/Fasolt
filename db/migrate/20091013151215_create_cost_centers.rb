class CreateCostCenters < ActiveRecord::Migration
  def self.up
    create_table :cost_centers do |t|
      t.string :code
      t.string :division

      t.timestamps
    end
  end

  def self.down
    drop_table :cost_centers
  end
end
