class Label < ApplicationRecord
  has_and_belongs_to_many :publicaciones
  #has_many :publicaciones, dependent: :destroy
  validates :nombre, presence: true
end
