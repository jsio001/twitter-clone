class PagesController < ApplicationController

  def home
    @tweets = current_user.tweets.order(created_at: :desc).select { |tweet| tweet.id != nil }
    @users = User.all.select { |user| user != current_user && user.id != nil }
  end

  def profile_user
    @user = User.find(params[:id])
    @tweets = @user.tweets.select { |tweet| tweet.id != nil }
  end

end
