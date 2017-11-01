class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

    def relate
      @follow = Relation.new(subscriber_id: current_user.id, poster_id: params[:id])
      if @follow.save
        flash[:notice] = "Now following."
        redirect_to root_path
      else
        flash[:alert] = "Unable to follow user."
        redirect_to root_path
      end
    end

    def unrelate
      @follow = Relation.find_by(subscriber_id: current_user.id, poster_id: params[:poster_id])
      if @follow.destroy
        flash[:notice] = "Unfollowed."
        redirect_to root_path
      else
        flash[:alert] = "Unable to unfollow user."
        redirect_to root_path
      end
    end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

end
