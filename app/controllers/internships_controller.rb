class InternshipsController < ApplicationController
  def new
  	@internship=Internship.new
  end
  def create
  	@internship=Internship.new internship_params
  	@internship.save
  end

  protected
  def internship_params
  	params.require(:internship).permit(:comp, :field, :supervisor, :commentary, :period, :schoolyear)
  end
end
