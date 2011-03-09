#encoding:utf-8
module ApplicationHelper
  #Data about site
  def studio_data
    { :name => "Quadrate.kz", :description => "Веб-студия", :year => "2011" }
  end
  
  def title
    @base_title = studio_data[:name]
    if @title
      @base_title + " | " + @title
    else
      @base_title
    end
  end
end
