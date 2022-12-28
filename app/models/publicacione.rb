class Publicacione < ApplicationRecord
  belongs_to :user
  belongs_to :label
  validates :titulo, presence: true
  validates :descripcion, presence: true
end
