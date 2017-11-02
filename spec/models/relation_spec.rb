require 'rails_helper'

RSpec.describe Relation, type: :model do

  it { is_expected.to belong_to(:subscriber) }
  it { is_expected.to belong_to(:poster) }

  let!(:relation) do
    { relation: {subscriber_id: 1, poster_id: 1} }
  end
  # describe 'validates follow self' do
  #   subject { Relation.create(subscriber_id: 1, poster_id: 1) }
  # end
  it { is_expected.not_to be_valid }
  # it { is_expected.to raise_error }

end
