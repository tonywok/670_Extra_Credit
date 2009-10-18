class AddDecimalTypeToPriceOfBook < ActiveRecord::Migration
  def self.up
    alter_table :books do |t|
      t.decimal "price", :precision => 8, :scale => 2, :default => 0.0
    end
  end

  def self.down
    alter_table :books do |t|
      t.decimal "price"
    end
  end
end
