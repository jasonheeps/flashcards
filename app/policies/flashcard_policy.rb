class FlashcardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def show?
    record.deck.user == user    
  end
end
