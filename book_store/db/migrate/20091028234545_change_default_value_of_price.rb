class ChangeDefaultValueOfPrice < ActiveRecord::Migration
  def self.up
    alter_table :book, :price, :decimal, :precision => 8, :scale => 2, :default => 0.00
  end

  def self.down
    alter_table :book, :price, :decimal, :precision => 8, :scale => 2, :default => 0.0
  end
end
