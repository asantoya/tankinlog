FactoryGirl.define do
  factory :user do
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end

  factory :car do
    brand    "example"
    color "red"
    model "ZXC"
    year "2012"
    user_id "1"
  end
end