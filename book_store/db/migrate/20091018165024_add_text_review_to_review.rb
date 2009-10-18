class AddTextReviewToReview < ActiveRecord::Migration
  def self.up
    add_column :reviews, :review, :text
  end

  def self.down
    remove_column :reviews, :review, :text
  end
end
