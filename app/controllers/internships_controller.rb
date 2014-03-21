class InternshipsController < ApplicationController
  def new
  	@internship=Internship.new
  end
end
