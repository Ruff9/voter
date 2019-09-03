class AddUserReferenceToBallots < ActiveRecord::Migration[6.0]
  def change
    add_reference :ballots, :user, index: true, foreign_key: true
  end
end
