class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :question, null: false

      t.references :admin, index: true, foreign_key: true
      t.timestamps
    end
  end
end
