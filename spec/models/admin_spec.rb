require 'rails_helper'

describe Admin, type: :model do
  it { should have_many(:votes) }
end
