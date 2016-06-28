require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  include Devise::TestHelpers                          
  include Warden::Test::Helpers                        
  Warden.test_mode!                                    

  def teardown                                         
    Warden.test_reset!                                 
  end 
    
    def setup
        @category = Category.create(name: "sports") 
        sign_in users(:user_one)

    end
    
    test "should be categories index" do
       
        get :index
        assert_response :success
    end
    
    test "should get new" do
        get :new
        assert_response :success
    end
    
    test "should get show" do
        get(:show, {'id' => @category.id})
        assert_response :success
    end
    
    test "should redirect when not admin" do
        assert_no_difference 'Category.count' do
            post :create, category: { name: "sports" }
        end
        assert_redirected_to categories_path
    end
end