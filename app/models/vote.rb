class Vote < ApplicationRecord
  belongs_to :admin
  has_many :ballots

  validates_presence_of :question
end
