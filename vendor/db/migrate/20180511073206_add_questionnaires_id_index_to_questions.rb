class AddQuestionnairesIdIndexToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :questionnaire_id, :string
    add_index :questions, :questionnaire_id
  end
end
