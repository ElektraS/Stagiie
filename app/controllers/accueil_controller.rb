class AccueilController < ApplicationController
  def login
  	if user_signed_in?
  		@internships = Internship.all 
  	end
  end
end
