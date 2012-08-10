FactoryGirl.define do

  Factory.define :user do |f| 
    f.password "foobar"
    f.password_confirmation { |u| u.password }
    f.email "foo@example.com"
  end

  Factory.define :car do |f|
    f.brand    "example"
    f.color "red"
    f.model "ZXC"
    f.year "2012"
  end
end