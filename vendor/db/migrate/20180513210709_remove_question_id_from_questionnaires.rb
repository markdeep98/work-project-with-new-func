class RemoveQuestionIdFromQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    remove_column :questionnaires, :question_id, :string
  end
end
