#encoding:utf-8
class Ourproject < ActiveRecord::Base
  #url format
  url_format = /^http:\/\/\w*/
  
  validates :title, :url, :description, :presence => {:message => " - поле не заполнено!"}
  validates :url, :format => {:with => url_format, :message => " - Вы ввели url без http://"}
  
  #sort
  default_scope order("id DESC")
end
