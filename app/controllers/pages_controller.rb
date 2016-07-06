class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:rock, :ice, :blog]
    
    def index
        
    end
    
    def offroading
    end
    
    def blog
    end
    
    def users
        @users = User.all
    end
    
    def rock
        
    end
    
    def ice
        
    end
    
end
