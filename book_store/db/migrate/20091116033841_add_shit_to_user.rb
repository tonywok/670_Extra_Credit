class AddShitToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :password, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :integer
    add_column :users, :credit_card, :string
    add_column :users, :credit_card_number, :integer
    add_column :users, :exp_date, :date_time
  end

  def self.down
    remove_column :users, :username
    remove_column :users, :password
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :address
    remove_column :users, :city
    remove_column :users, :state
    remove_column :users, :zip
    remove_column :users, :credit_card
    remove_column :users, :credit_card_number
    remove_column :users, :exp_date
  end
end
