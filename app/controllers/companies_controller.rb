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


  def edit
    if user_signed_in?
      @company = Company.find params[:id]
    end
  end

  def update
    if user_signed_in?
      @company = Company.find(params[:id])
     
      respond_to do |f|
        if @company.update company_params
          f.html { redirect_to(@company,
                        :notice => 'Post was successfully updated.') }
          f.xml  { head :ok }
        else
          f.html { render :action => "edit" }
          f.xml  { render :xml => @company.errors,
                        :status => :unprocessable_entity }
        end
      end
    end
  end

  protected
  def company_params
  	params.require(:company).permit(:name, :field, :web_site, :mail, :phone, :adress, :existence, :supervisors)
  end

end
