class City < ActiveRecord::Base
	has_many :customers
	has_many :cleaners
end
