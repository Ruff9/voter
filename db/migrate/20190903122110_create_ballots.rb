class CreateBallots < ActiveRecord::Migration[6.0]
  def change
    create_table :ballots do |t|
      t.integer :note, null: false

      t.references :vote, index: true, foreign_key: true
      t.timestamps
    end
  end
end
