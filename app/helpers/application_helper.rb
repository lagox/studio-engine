#encoding:utf-8
module ApplicationHelper
  #Data about site
  def studio_data
    { :name => "pubrica.kz", :description => "Веб-студия", :year => "2011" }
  end
  
  #title site
  def title
    @base_title = studio_data[:name].capitalize
    if @title
      @base_title + " | " + @title
    else
      @base_title
    end
  end
  
  #slice http://
  def slice_http(url)
    url_count = url.size.to_i
    url.slice(7..url_count)
  end
end
