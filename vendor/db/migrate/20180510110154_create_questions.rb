class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title

      t.timestamps
    end
    add_index :questions, :title
  end
end
