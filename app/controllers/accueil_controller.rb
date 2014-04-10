class AccueilController < ApplicationController
  def login
  	if user_signed_in?
  		@internships = Internship.last(5)
  		@compagny= Company.last(5)
  	end
  	if admin_signed_in?
	    if params[:approved] == "true"
	      @user = User.find_all_by_approved(true)
	    else 
	    	if !(params[:approved] == "true")
	    		@user = User.find_all_by_approved(false)
	    	else
	    		@user = User.all
	    	end
	    end
  	end
  end
end
