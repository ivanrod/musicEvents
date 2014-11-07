class Visit < ActiveRecord::Base
	belongs_to :location
	belongs_to :user

	validates_presence_of :location_id, :user_id, :from_date, :to_date

	validate :from_date_is_before_to_date
     def from_date_is_before_to_date
         if from_date.to_i > to_date.to_i
         errors.add(:from_date, "can't be after to date")
         end
     end

end
