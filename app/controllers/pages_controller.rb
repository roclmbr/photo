class PagesController < ApplicationController
<<<<<<< HEAD
    skip_before_action :authenticate_user!, only: [:rock, :ice]
=======
    skip_before_action :authenticate_user!, only: [:rock, :ice, :blog]
>>>>>>> 905fb27daaa2c6c4d1d72e6aa7dc948cf5ebcc1d
    
    def index
        
    end
    
<<<<<<< HEAD
    def ice
    end
    
=======
>>>>>>> 905fb27daaa2c6c4d1d72e6aa7dc948cf5ebcc1d
    def offroading
    end
    
    def users
        @users = User.all
    end
    
    def rock
        
    end
    
    def ice
        
    end
    
end
