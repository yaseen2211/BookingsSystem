class Cleaner < ActiveRecord::Base
	belongs_to :city
	has_many :bookings

end
