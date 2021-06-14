class CreateFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards do |t|
      t.references :deck, null: false, foreign_key: true
      t.text :question
      t.text :solution

      t.timestamps
    end
  end
end
