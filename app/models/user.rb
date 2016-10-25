class User < ActiveRecord::Base
  has_secure_password

  # def authenticate(password)
  #   binding.pry
  #   return self if password == self.password
  # end
end
