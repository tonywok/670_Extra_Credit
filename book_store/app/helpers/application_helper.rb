# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def add_author_link(name)
    link_to_function name do |page| 
      page.insert_html :bottom, :authors, :partial => 'author', :object => Author.new
    end
  end
  
  def get_authors(book)
    author_listing = ""
    book.authors.each do |a| 
      author_listing = author_listing + "#{a.first_name} #{a.last_name}, "  
    end
    author_listing.to_s.chop.chop
  end
end
