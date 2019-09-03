class Vote < ApplicationRecord
  belongs_to :admin
  validates_presence_of :question
end
