require 'rails_helper'

describe Admin do
  it { should have_many(:votes) }
end
