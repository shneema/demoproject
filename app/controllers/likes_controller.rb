  
class LikesController < ApplicationController
  before_action :find_likeable, only: [:create]
  
  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @likable.likes.create(user_id: current_user.id)
    end
    # redirect_to root_path
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
  end

  def self.already_liked?
    Like.where(user_id: current_user.id, likeable_id: params[:likeable_id]).exists?
  end

  private

  def find_likeable
  	@likable = params[:likeable_type].constantize.find(params[:likeable_id])
  end
end





