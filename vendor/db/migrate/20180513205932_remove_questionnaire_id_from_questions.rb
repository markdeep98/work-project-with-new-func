class RemoveQuestionnaireIdFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :questionnaire_id, :integer
  end
end
