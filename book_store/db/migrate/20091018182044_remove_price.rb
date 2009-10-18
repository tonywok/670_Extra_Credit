class RemovePrice < ActiveRecord::Migration
  def self.up
    remove_column :books, :price
  end

  def self.down
    add_column :books, :price, :integer
  end
end
