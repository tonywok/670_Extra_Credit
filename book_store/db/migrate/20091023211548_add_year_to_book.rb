class AddYearToBook < ActiveRecord::Migration
  def self.up
    add_column :books, :year, :string
  end

  def self.down
    remove_column :books, :year
  end
end
