class Author < ActiveRecord::Base
  belongs_to :book
  attr_accessor :should_destroy
  
  def should_destroy?
    should_destroy.to_i == 1
  end
end
