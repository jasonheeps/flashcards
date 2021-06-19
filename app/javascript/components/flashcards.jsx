import React, { useState, useEffect } from 'react';
// import { Link } from 'react-router-dom';

export default function Flashcards(props) {
  const [flashcards, setFlashcards] = useState([]);

  useEffect(() => {
    const url = '/api/v1/flashcards/index';
    fetch(url)
      .then(response => {
        if (response.ok) {
          return response.json();
        }
        throw new Error('Network response was not ok.');
      })
      .then(response => setFlashcards(response))
      .catch(() => props.history.push('/'));
  }, []);

  const allFlashcards = flashcards.map((flashcard, index) => (
    <div key={flashcard.id}>
      <p>{`${index + 1}. ${flashcard.question}`}</p>
      <p>{`Solution: ${flashcard.solution}`}</p>
    </div>
  ));

  return (
    <div>
      {allFlashcards}
    </div>
  );
}
