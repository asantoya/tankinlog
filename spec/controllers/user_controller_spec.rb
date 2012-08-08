require 'spec_helper'


describe UsersController do

	describe "GET 'new'" do
  
    it "should be successful" do
      visit new_user_registration_path
      response.should be_success
    end
  end

  describe "POST 'create'" do

    describe "If it failure" do
      
      before(:each) do
        @user = { :email => "", :password => "", :password_confirmation => "" }
      end
      it "should render the 'new' page" do
        post :create, :user => @user
        visit new_user_registration_path
      end
      it "should not create a user" do
        lambda do
          post :create, :user => @user
        end.should_not change(User, :count)
      end
    end
    describe "success" do
      before(:each) do
        @user = {:email => "user@example.com", :password => "foobar", :password_confirmation => "foobar" }
      end
      it "should create a user" do
        lambda do
          post :create, :user => @user
        end.should change(User, :count).by(1)
      end
      it "should redirect to the user welcome page" do
        post :create, :user => @user
        response.should redirect_to user_session_path
      end
    end
  end
end
