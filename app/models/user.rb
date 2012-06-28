class User < ActiveRecord::Base
  attr_accessible :email, :passWord, :userName


  ## alteração 001

  validate :email, :password, :username, :presence => true
  validate :email, :username, :uniqueness => true


  def authenticate password
    #user = find_by_username(username)
    if self && self.password == password
      self
    else
      nil
    end
  end

  ## alteração 002

end
