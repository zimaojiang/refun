class CreateShopcodes < ActiveRecord::Migration
  def self.up
    create_table :shopcodes do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :shopcodes
  end
end
