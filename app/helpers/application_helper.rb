module ApplicationHelper
  
  #Return a title on a per page basis
  def title
    base_title = "The Byte Stuff"
    if @title.nil?
      base_title
    else
      "#{base_title}  |  #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "The Byte Stuff", :class => "round")
  end
end
