class Ourportfolio < ActiveRecord::Base
  #paperclip screen
  has_attached_file :screen, :styles => { :medium => "500x500", :thumb => "200x200" },
                    :url => "/system/:attachment/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  validates_attachment_presence :screen
  validates_attachment_size :screen, :less_than => 6.megabytes
  validates_attachment_content_type :screen, :content_type => ['image/jpeg', 'image/png', 'image/gif']
end
