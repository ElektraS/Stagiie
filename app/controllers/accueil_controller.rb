class AccueilController < ApplicationController
  def login
  	if user_signed_in?
  		@internships = Internship.all
  		@compagny= Company.all
  	end
  end
end
