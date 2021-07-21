class Api::V1::FlashcardsController < ApplicationController
  def index
    flashcards = policy_scope(Flashcard)
    render json: flashcards
  end

  def show
    authorize flashcard = Flashcard.find_by_id(params[:id])
    render json: flashcard
  end
end
