class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :question, index: true
      t.references :answer, index: true, null: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
