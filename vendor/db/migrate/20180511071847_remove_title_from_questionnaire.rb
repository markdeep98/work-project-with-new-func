class RemoveTitleFromQuestionnaire < ActiveRecord::Migration[5.1]
  def change
    remove_column :questionnaires, :title, :string
  end
end
