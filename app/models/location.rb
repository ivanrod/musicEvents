class Location < ActiveRecord::Base
	has_many :visit
	validates_presence_of :name, :city, :latitud, :longitud

	def to_param
		name
	end
end
