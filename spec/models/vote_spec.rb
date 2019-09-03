require 'rails_helper'

describe Vote, type: :model do
  it { should belong_to(:admin) }
  it { should have_many(:ballots) }

  it { should validate_presence_of(:question) }
end
