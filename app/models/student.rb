class Student < ActiveRecord::Base
	validates :name, presence: true
	validates :first_name, presence: true
	validates :mail, presence: true
	validates :year, presence: true
end
