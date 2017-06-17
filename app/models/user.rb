class User < ActiveRecord::Base

  has_secure_password
  has_many :documents
  has_many :badges
    
end