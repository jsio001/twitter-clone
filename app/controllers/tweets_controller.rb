class TweetsController < ApplicationController

  def create
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      respond_to do |format|
        format.html {redirect_to root_path}
        format.js
      end
    else
      flash.now[:alert] = "Tweet is empty."
    end
  end

  def show
    # show any tweet based on id, regardless of whether user is author
    @tweet = current_user.tweets.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = current_user.tweets.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @tweet = current_user.tweets.find(params[:id])
    @tweet.destroy
    redirect_to root_path
  end

private

  def tweet_params
    params.require(:tweet).permit(:tweet)
  end

end
