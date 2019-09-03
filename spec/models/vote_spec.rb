require 'rails_helper'

describe Vote do
  it { should belong_to(:user) }
  it { should validate_presence_of(:question) }
end
