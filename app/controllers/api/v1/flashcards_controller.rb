class Api::V1::FlashcardsController < ApplicationController
  def index
    flashcards = policy_scope(Flashcard)
    render json: flashcards
  end
end
