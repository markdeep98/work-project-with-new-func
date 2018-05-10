class AddTitleToQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    add_column :questionnaires, :title, :string
  end
end
