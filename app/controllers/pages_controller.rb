class PagesController < ApplicationController
    
    def index
    end
    
    def about
    end
    
    def climbing
    end
    
    def offroading
    end
    
    def blog
    end
    
    def users
        @users = User.all
    end
end
