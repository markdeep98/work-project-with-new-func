class AddStatusToQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    add_column :questionnaires, :status, :string
  end
end
