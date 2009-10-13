class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :user_login
      t.string :email_addresses
      t.string :cost_center
      t.string :path
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
