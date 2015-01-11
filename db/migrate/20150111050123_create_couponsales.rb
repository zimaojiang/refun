class CreateCouponsales < ActiveRecord::Migration
  def self.up
    create_table :couponsales do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :couponsales
  end
end
