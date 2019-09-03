class Ballot < ApplicationRecord
  belongs_to :vote
  validates_presence_of :note
end
