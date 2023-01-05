class Publicacione < ApplicationRecord
  belongs_to :user
  belongs_to :label
  has_and_belongs_to_many :label
  has_many :board:scale => has_many :user, through: :boards
  has_one_attached :foto
  validates :titulo, presence: true
  validates :descripcion, presence: true
end
