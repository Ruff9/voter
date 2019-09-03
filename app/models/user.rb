class User < ApplicationRecord
  has_many :ballots
  validates_presence_of :name
end
