require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:tweets) }
  it { is_expected.to have_many(:subscribers) }
  it { is_expected.to have_many(:posters) }
end
