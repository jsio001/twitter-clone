require 'rails_helper'

RSpec.describe Tag, type: :model do

  it { is_expected.to have_many(:tweets) }
  it { is_expected.to have_many(:tweet_tags) }

end
