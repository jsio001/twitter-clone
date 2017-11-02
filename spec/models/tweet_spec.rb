require 'rails_helper'

RSpec.describe Tweet, type: :model do

  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:tweet_tags) }
  it { is_expected.to have_many(:tags) }
  it { is_expected.to validate_presence_of(:tweet)}
  
end
