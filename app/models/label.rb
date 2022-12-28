class Label < ApplicationRecord
  belongs_to :publicaciones
  has_many :publicaciones, dependent: :destroy
  validates :nombre, presence: true
end
