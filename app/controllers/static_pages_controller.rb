class StaticPagesController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:home]
    def home
          # pass the information to the view page of cart 
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end  
    end
    def classes
    end
    def profile
      if session[:cart] then
        @cart = session[:cart]
      else
        @cart = {}
      end  
    end
    def checkout
      if session[:cart] then
        @cart = session[:cart]
      else
        @cart = {}
      end  
    end
    
end
