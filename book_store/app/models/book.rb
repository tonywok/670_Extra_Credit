class Book < ActiveRecord::Base
  has_many :authors
  has_many :reviews
end
