class AccueilController < ApplicationController
  def login
  	if user_signed_in?
  		@internships = Internship.last(5)
  		@compagny= Company.last(5)
  	end
  end
end
