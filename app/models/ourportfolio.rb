#encoding:utf-8
class Ourportfolio < ActiveRecord::Base
  #sort
  default_scope order("id DESC")
  
  #url_format
  url_format = /^http:\/\/\w*/
  
  validates :title, :desc, :presence => { :message => " - поле не заполнено!" }
  #validates :url, :presence => false, :format => { :with => url_format, :message => " - Вы ввели url без http://"}

  #paperclip screen
  has_attached_file :screen, :styles => { :medium => "670x810", :thumb => "200x180" },
                    :url => "/system/:attachment/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  validates_attachment_presence :screen
  validates_attachment_size :screen, :less_than => 6.megabytes
  validates_attachment_content_type :screen, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  

  #paginate
  cattr_reader :per_page
  @@per_page = 6
  
end
