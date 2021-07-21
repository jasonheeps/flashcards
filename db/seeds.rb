# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'clear db first...'
Flashcard.all.delete_all
Deck.all.delete_all
User.all.delete_all
puts 'db clear!'

user = User.create!(email: 'user@email.com', password: '123456')
puts 'created a user!'
deck = Deck.create!(user_id: user.id, title: 'My first Deck')
puts 'created a deck!'
flashcards = [
  {
    deck_id: deck.id,
    question: 'What is 1 + 1?',
    solution: '1 + 1 = 2'
  },
  {
    deck_id: deck.id,
    question: 'What color has the sun?',
    solution: 'The sun is yellow.'
  },
  {
    deck_id: deck.id,
    question: 'What is the capital of Germany?',
    solution: 'The capital of Germany is Berlin.'
  }
]

flashcards.each do |flashcard|  
  Flashcard.create!(
    {
      deck_id: flashcard[:deck_id],
      question: flashcard[:question],
      solution: flashcard[:solution]
    }
  )
end

puts 'created flashcards!'
puts 'seed complete!'
