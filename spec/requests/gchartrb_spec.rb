require File.expand_path("#{File.dirname(__FILE__)}/helper")

describe GoogleChart::Base do
  before(:each) do
    # Evil metaprogramming. Not sure if I am doing the right thing ;)
    self.instance_eval <<-EOF
    class GoogleChart::Dummy < GoogleChart::Base
      class <<self ; public :new ; end
    end
    EOF
  end
end