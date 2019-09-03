class Admin < ApplicationRecord
  include Clearance::User

  has_many :votes
end
