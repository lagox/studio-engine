#encoding:utf-8
class PagesController < ApplicationController
  def index
    @title = "Главная"
  end

  def contacts
    @title = "Контакты"
  end
end
