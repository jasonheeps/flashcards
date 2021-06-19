class Api::V1::FlashcardsController < ApplicationController
  def index
    flashcards = Flashcard.all
    render json: flashcards
  end
end
