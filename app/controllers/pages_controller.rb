#encoding:utf-8
class PagesController < ApplicationController
  def index
    @title = "Создание сайтов в Казахстане. Поддержка. Продвижение. Фирменный стиль."
  end

  def contacts
    @title = "Контакты"
  end
  
  def support_price
    @title = "Поддержка сайта. Цены на услуги"
  end
end
