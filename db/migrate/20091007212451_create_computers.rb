class CreateComputers < ActiveRecord::Migration
  def self.up
    create_table :computers do |t|
      t.string :name
      t.string :path
      t.string :os
      t.string :os_version
      t.string :ip_address
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :computers
  end
end
