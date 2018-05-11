class AddQuestionIdIndexToQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    add_column :questionnaires, :question_id, :string
    add_index :questionnaires, :question_id
  end
end
