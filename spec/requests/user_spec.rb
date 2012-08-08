require 'spec_helper'

describe "User" do
  
  describe "signup" do

    describe "failure" do
      it "should not make a new user" do
        lambda do
          visit new_user_registration_path
          fill_in "email", :with => ""
          fill_in "password", :with => ""
          fill_in "password_confirmation", :with => ""
          click_button
          response.should render_template('users/new')
          response.should have_selector('div#error_explanation')
        end.should_not change(User, :count)
      end
    end

    describe "success" do
      it "should make a new user" do
        lambda do
          visit new_user_registration_path
          fill_in "email", :with => ""
          fill_in "password", :with => ""
          fill_in "password_confirmation", :with => ""
          click_button
          response.should have_selector('div.flash.success',:content => "Welcome")
          response.should render_template('users/show')
        end.should change(User, :count).by(1)
      end
    end
  end

  describe "signin" do
    
    describe "failure" do
      it "should not sign a user in" do
        visit user_session_path
        fill_in "Email",    :with => ""
        fill_in "Password", :with => ""
        click_button
        response.should have_selector('div.flash.error', :content => "Invalid")
        response.should render_template('sessions/new')
      end
    end
    
    describe "success" do
      it "should sign a user in and out" do
        user = Factory(:user)
        visit user_session_path
        fill_in "Email",    :with => user.email
        fill_in "Password", :with => user.password
        click_button
        controller.should be_signed_in
        click_link "Sign out"
        controller.should_not be_signed_in
      end
    end
  end
end