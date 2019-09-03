class Vote < ApplicationRecord
  belongs_to :user
  validates_presence_of :question
end
