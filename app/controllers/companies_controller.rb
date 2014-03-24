class CompaniesController < ApplicationController
  def new
  	if user_signed_in?
  		@company=Company.new
  	end
  end

  def create
  	if user_signed_in?
	  	@company=Company.new company_params
	  	@company.save
      redirect_to "/companies/#{@company.id}"
    end
  end

  def destroy
    if user_signed_in?

      @company = Company.find params[:id]
      @company.destroy
      redirect_to "/"
    end
  end
  
  def show
    if user_signed_in?
      @company = Company.find params[:id]
    end
  end

  protected
  def company_params
  	params.require(:company).permit(:name, :field, :web_site, :mail, :phone, :adress, :existence, :supervisors)
  end

end
