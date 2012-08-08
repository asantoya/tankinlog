require 'spec_helper'

describe CarsController do
	describe "GET 'new'" do
  		it "go to the new car path" do
    		user = User.create!(:email => "user@example.com", :password => "foobar", :password_confirmation => "foobar" )
    		visit new_user_car_path(:user_id => user.id)
    		response.should be_success
  		end
	end
	describe "POST 'create' car" do
    
    describe "car created success" do
      before(:each) do
  				@user = User.create!(:email => "foo@example.com", :password => "foobar", :password_confirmation => "foobar" )
  				@car = Car.new(:brand => "example", :color => "foobar", :model => "foobar", :year =>"2012")
          Car.any_instance.stubs(:valid?).returns(true)
      end

      it "should create a car" do
        lambda do
          post :create, :car => @car, :user_id => @user.id
        end.should change(Car, :count).by(1)
      end

      it "should redirect to the user cars page" do
        post :create, :car => @car, :user_id => @user.id
        response.should redirect_to redirect_to user_car_path(@user.id, @car.id)
      end
    end
  end
end
# it "should delete a car" do
# @car = Factory.create :car
# expect { click_link "Delete" }.to change{Car.count}.by(-1)
# find('a', :text => 'Delete').click
# page.driver.browser.switch_to.alert.accept
# end
# end