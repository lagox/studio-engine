class Ourproject < ActiveRecord::Base
  validates :title, :url, :description, :presence => true
end
