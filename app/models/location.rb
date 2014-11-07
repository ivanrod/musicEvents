class Location < ActiveRecord::Base
	has_many :visit
	validates_presence_of :name, :city, :latitud, :longitud

	def to_param
		name
	end

	def self.showAll
		locArray = []
		Location.all.each do |location|
			locArray.push(location.name)
		end
		return locArray
	end
end
