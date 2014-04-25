class AddCommentsToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :comments, :json
  end
end
