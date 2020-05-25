class Evento < ApplicationRecord
  belongs_to :comuna
  belongs_to :user
  validates :descripcion, presence: true
end
