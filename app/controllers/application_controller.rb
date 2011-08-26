#encoding:utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #will_paginate
  WillPaginate::ViewHelpers.pagination_options[:previous_label] = "Туда"
  WillPaginate::ViewHelpers.pagination_options[:next_label] = "Сюда"
  
  protected
  
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, :notice => "Войдите пожалуйста!"
      end
    end
end
