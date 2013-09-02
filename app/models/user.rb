require 'bcrypt'

class User < ActiveRecord::Base

  include BCrypt

  has_many :carts

  def self.authenticate(username, secret)
    user = find_by_username(username)
    if user && user.password == secret
      return user
    end
  end

  def password
    @password = Password.new(self.password_digest)
  end

  def password=(secret)
    @password = Password.create(secret)
    self.password_digest = @password
  end

end
