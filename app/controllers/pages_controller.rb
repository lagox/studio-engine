#encoding:utf-8
class PagesController < ApplicationController
  def index
    @title = "Создание сайтов в Казахстане. Поддержка. Продвижение. Фирменный стиль."
  end

  def contacts
    @title = "Контакты"
  end
  
end
