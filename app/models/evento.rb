class Evento < ApplicationRecord
  belongs_to :comuna
  belongs_to :user
  validates :descripcion, presence: true
  has_one_attached :image
  def pertenece_to_user(user)
  	if user.present? && self.user_id == user.id
  		true
  	else
  		false
  	end
  end

  def descripcion_short
    self.descripcion + (' ' * 50)
  end
end
