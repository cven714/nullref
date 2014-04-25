class AddCommentsToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :comments, :json
  end
end
