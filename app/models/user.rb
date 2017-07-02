class User < ActiveRecord::Base

  has_secure_password
  has_secure_token

  has_many :documents
  has_many :photos, through: :documents

  has_many :memberships
  has_many :badges, through: :memberships
  
end
