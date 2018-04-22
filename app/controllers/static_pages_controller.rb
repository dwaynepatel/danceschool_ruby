class StaticPagesController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:home]
    def home
    end
    def classes
    end
    def test
    end
    
end
