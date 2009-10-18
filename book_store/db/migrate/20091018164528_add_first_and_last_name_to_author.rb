class AddFirstAndLastNameToAuthor < ActiveRecord::Migration
  def self.up
    add_column :authors, :first_name, :string
    add_column :authors, :last_name, :string
  end

  def self.down
    remove_column :authors, :first_name, :string
    remove_column :authors, :last_name, :string
  end
end
