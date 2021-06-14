class FlashcardProgress < ApplicationRecord
  belongs_to :iteration
  belongs_to :flashcard
end
