class PagesController < ApplicationController
  def home
    @tweets = current_user.tweets.select { |tweet| tweet.id != nil}
    @users = User.all.select { |user| user != current_user && user.id != nil }
  end
end
