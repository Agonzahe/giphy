class User < ApplicationRecord
  extend Devise::Models
  devise :database_authenticatable, :registerable
  has_many :publicaciones

end
