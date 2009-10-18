class AddAttributesToBook < ActiveRecord::Migration
  def self.up
    add_column :books, :isbn, :integer
    add_column :books, :title, :string
    add_column :books, :publisher, :string
    add_column :books, :catagory, :string
    add_column :books, :price, :integer
    add_column :books, :min_required, :integer
  end

  def self.down
    remove_column :books, :isbn
    remove_column :books, :title
    remove_column :books, :publisher
    remove_column :books, :catagory
    remove_column :books, :price
    remove_column :books, :min_required
  end
end
