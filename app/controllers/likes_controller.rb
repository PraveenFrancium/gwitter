class LikesController < ApplicationController

  def create
  	@gweet = Gweet.find(params[:gweet_id])
    @gweet.likes.where(user_id: current_user.id).first_or_create

    respond_to do |format|
      format.html { redirect_to @gweet }
     
    end
end
