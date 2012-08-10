require 'spec_helper'

describe TankingLogsController do
	describe "GET 'new'" do
		it "create a new tankin log for the user car" do
<<<<<<< HEAD
			user =  Factory.create(:user, :name => "frank", :password => "secret")
			car =  Factory.create(:car, :brand => "frank", :color => "white", :model=>"aveo",:year=>"2011")
=======
			user = User.create!(:email => "user@example.com", :password => "foobar", :password_confirmation => "foobar" )
			car = Car.create!(:brand => "example", :color => "foobar", :model => "foobar", :year =>"2012")
>>>>>>> 8f966d322dc37f7ae6a105590970ff6b02bd09f1
      		visit new_user_car_tanking_log_path(:user_id => user.id,:car_id=>car.id)
      		response.should be_success
    	end
    end
end
