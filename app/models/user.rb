class User < ApplicationRecord
  extend Devise::Models
  devise :devise :database_authenticatable, :registerable
  has_many :publicacione , dependent: :destroy
  accepts_nested_attributes_for :publicacione

end
