class Region < ApplicationRecord
	has_many :comunas
	has_many :eventos, :through => :comunas
end
