class User < ActiveRecord::Base
  attr_accessible :email, :passWord, :userName
end
