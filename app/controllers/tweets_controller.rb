class TweetsController < ApplicationController

  def index
    @tweet = current_user.tweets
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
      flash[:error] = "cannot save"
    end
  end

  def show
    # show any tweet based on id, regardless of whether user is author
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = current_user.tweets.find(tweet_params)
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
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to root_path
  end

private

  def tweet_params
    params.require(:tweet).permit(:tweet)
  end

end
