class CreateFlashcardProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcard_progresses do |t|
      t.references :iteration, null: false, foreign_key: true
      t.references :flashcard, null: false, foreign_key: true
      t.boolean :done
      t.integer :attempts

      t.timestamps
    end
  end
end
