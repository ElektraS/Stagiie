class CompaniesController < ApplicationController
  def new
  	if user_signed_in?
  		@company=Company.new(:name=>params[:name])
  	end
  end

  def create
  	if user_signed_in?
	  	@company=Company.new company_params
      @company.user_id=current_user.id
	  	@company.save
      if @company.persisted?
        flash[:alert_success] = "Fiche enregistrée"
        redirect_to "/companies/#{@company.id}"
      end
    end
  end

  def destroy
    if user_signed_in?

      @company = Company.find params[:id]
      @company.destroy        
      if @company.destroyed?
          flash[:alert] = "Fiche supprimée"
          redirect_to "/"
      end
    end
  end
  
  def show
    if user_signed_in?
      @company = Company.find params[:id]
    end
  end

  def show_all
    if user_signed_in?
      @company = Company.all.paginate(:page => params[:page], :per_page => 5)
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
                        :alert => 'La fiche à été mise à jour') }
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
