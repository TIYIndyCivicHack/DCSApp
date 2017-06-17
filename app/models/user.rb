class User < ActiveRecord::Base

  has_secure_password
  has_secure_token

  has_many :documents
  has_many :badges

end
