class InternshipsController < ApplicationController
  def new
  	if user_signed_in?
  		@internship=Internship.new
  	end
  end

  def create
  	if user_signed_in?
	  	@internship=Internship.new internship_params
      @internship.user_id=current_user.id
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

  def edit
    if user_signed_in?
      @internship = Internship.find params[:id]
    end
  end

  def update
    if user_signed_in?
      @internship = Internship.find(params[:id])
     
      respond_to do |f|
        if @internship.update internship_params
          f.html { redirect_to(@internship,
                        :notice => 'Post was successfully updated.') }
          f.xml  { head :ok }
        else
          f.html { render :action => "edit" }
          f.xml  { render :xml => @internship.errors,
                        :status => :unprocessable_entity }
        end
      end
    end
  end
  
  def show
    if user_signed_in?
      @internship = Internship.find params[:id]
    end
  end

  def search
    @internships = Internship.search params[:search]
  end

  protected
  def internship_params
  	params.require(:internship).permit(:comp, :field, :supervisor, :commentary, :period, :schoolyear)
  end

end
