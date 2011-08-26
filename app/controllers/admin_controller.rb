#encoding:utf-8
class AdminController < ApplicationController
  before_filter :authorize
  
  # Administrator
  def index
    @title = "Админка"
  end

end
