class User < ActiveRecord::Base

  has_secure_password

  validates :password, length: { minimum: 3 }

  def self.authenticate_with_credentials(email, password)
    email = email.downcase
    user = User.find_by_email(email)
      if user && user.authenticate(password)
        p user
        user
      else
        nil
      end
  end
  
  
end
