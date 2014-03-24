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
      redirect_to "/internships/#{@internship.id}"
    end
  end

  def destroy
    if user_signed_in?

      @internship = Internship.find params[:id]
      @internship.destroy
      redirect_to "/"
    end
  end
  
  def show
    if user_signed_in?
      @internship = Internship.find params[:id]
    end
  end


  
  protected
  def internship_params
  	params.require(:internship).permit(:comp, :field, :supervisor, :commentary, :period, :schoolyear)
  end


  def view
  end
end
