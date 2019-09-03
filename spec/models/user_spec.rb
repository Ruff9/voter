require 'rails_helper'

describe User, type: :model do
  it { should have_many(:ballots) }
  it { should validate_presence_of(:name) }
end
