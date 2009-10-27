class Book < ActiveRecord::Base
  validates_uniqueness_of :isbn
  
  has_many :authors
  has_many :reviews
  
  validates_associated :authors
  after_update :save_authors
  
  def author_attributes=(author_attributes)
    author_attributes.each do |attributes|
      if attributes[:id].blank?
        authors.build(attributes)
      else
        author = authors.detect { |a| a.id == attributes[:id].to_i }
        author.attributes = attributes
      end
    end
  end
  
  def save_authors
    authors.each do |a|
      if a.should_destroy?
        a.destroy
      else
        a.save(false)
      end
    end
  end
end
