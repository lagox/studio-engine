#encoding:utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #will_paginate
  WillPaginate::ViewHelpers.pagination_options[:previous_label] = "Туда"
  WillPaginate::ViewHelpers.pagination_options[:next_label] = "Сюда"
  
end
