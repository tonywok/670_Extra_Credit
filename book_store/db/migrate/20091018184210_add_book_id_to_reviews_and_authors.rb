class AddBookIdToReviewsAndAuthors < ActiveRecord::Migration
  def self.up
    add_column :authors, :book_id, :integer
    add_column :reviews, :book_id, :integer
  end

  def self.down
    remove_column :authors
    remove_column :reviews
  end
end
