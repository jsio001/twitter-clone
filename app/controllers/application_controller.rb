class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

    def relate
      @follow = current_user.relations.build(subscriber_id: current_user, poster_id: params[:poster_id])
      if @follow.save
        flash[:notice] = "Now following #{:user.username(poster_id)}"
        redirect_to root_path
      end
    end

    def unrelate
    end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

end
