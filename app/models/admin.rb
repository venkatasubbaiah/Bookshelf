class Admin < ActiveRecord::Base
  attr_accessible :login ,:password,:password_confirmation
  acts_as_authentic
end
