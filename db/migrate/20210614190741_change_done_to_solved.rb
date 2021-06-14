class ChangeDoneToSolved < ActiveRecord::Migration[6.0]
  def change
    rename_column :flashcard_progresses, :done, :solved
  end
end
