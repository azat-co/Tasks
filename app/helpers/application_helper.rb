module ApplicationHelper
  
  def title(text)
    @title = text
  end
  
  def page_title
    @title || "Task Fields"
  end
  
  def header_title
    @title
  end
  
end
