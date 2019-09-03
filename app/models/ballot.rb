class Ballot < ApplicationRecord
  belongs_to :vote
  belongs_to :user

  validates_presence_of :note
end
