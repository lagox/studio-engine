#encoding:utf-8
class PagesController < ApplicationController
  def index
    @title = "Веб-разработка на Ruby on Rails."
  end

  def contacts
    @title = "Контакты"
  end
  
end
