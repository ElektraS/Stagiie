class AccueilController < ApplicationController
  def login
  	if user_signed_in?
  		@internships = Internship.last(5)
  		@compagny= Company.last(5)
  	end
  	if admin_signed_in?
	    if params[:approved] == "false"
	      @user = User.find_all_by_approved(((false) or (nil)))
	    else 
	    	if params[:approved] =="true"
	    		@user = User.find_all_by_approved(true)
	    	else
	    		@user = User.all
	    	end
	    end

	    if params[:signaled] == "true"
	      @internship = Internship.find_all_by_signaled(true)
	    else 
	    	if !(params[:approved] == "true")
	    		@internship = Internship.find_all_by_signaled(false)
	    	else
	    		@internship = Internship.all
	    	end
	    end
  	end
  end
end
