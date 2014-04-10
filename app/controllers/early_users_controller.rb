class EarlyUsersController < ApplicationController

  def new
    @early_user = EarlyUser.new 
  rescue 
  end

  def create
    @early_user = EarlyUser.new 
    if params["early_user"]
      @early_user.email = params["early_user"]["email"]
      @early_user.save!
    end
    redirect_to "/"
  rescue ActiveRecord::RecordInvalid => e
    #TODO show errors
    redirect_to "/"
  rescue => e
  end
end
