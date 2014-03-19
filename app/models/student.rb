class Student < ActiveRecord::Base
	has_many :internships
	has_one :users
end
