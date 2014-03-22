class InternshipsController < ApplicationController
  def new
  	if user_signed_in?
  		@internship=Internship.new
  	end
  end

  def create
  	if user_signed_in?
	  	@internship=Internship.new internship_params
	  	@internship.save
	end
  end

  def show
    if user_signed_in?
      @internship = Internship.find params[:id]
    end
  end

  def remove
    if user_signed_in?
      @internship = Internship.find params[:id]
      @internship.destroy
    end
  end
  
  protected
  def internship_params
  	params.require(:internship).permit(:comp, :field, :supervisor, :commentary, :period, :schoolyear)
  end

end
