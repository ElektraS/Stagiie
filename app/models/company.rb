class Company < ActiveRecord::Base
	has_many :internship
	has_many :student
end
