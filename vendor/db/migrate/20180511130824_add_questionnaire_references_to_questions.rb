class AddQuestionnaireReferencesToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :questionnaire, foreign_key: true
  end
end