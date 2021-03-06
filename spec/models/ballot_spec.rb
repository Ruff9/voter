require 'rails_helper'

describe Ballot, type: :model do
  it { should belong_to(:vote) }
  it { should belong_to(:user) }

  it { should validate_presence_of(:note) }
end
