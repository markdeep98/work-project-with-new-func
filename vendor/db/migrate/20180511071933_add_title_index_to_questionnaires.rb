class AddTitleIndexToQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    add_column :questionnaires, :title, :string
    add_index :questionnaires, :title
  end
end
