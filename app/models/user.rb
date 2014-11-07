class User < ActiveRecord::Base
	has_many :visit
	validates :name, presence: true
	validates :email, presence: true
end
