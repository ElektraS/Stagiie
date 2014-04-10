class Admins::SessionsController < Devise::SessionsController
  def create
    super do |resource|
      ressource.approved=true
    end
  end
end