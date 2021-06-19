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

  return (
    <div>
      <p>test</p>
    </div>

    // <div>
    //   flashcards.map(flashcard => (
    //       <p>{flashcard.question}</p>
    //       <p>{flashcard.solution}</p>
    //   ));
    // </div>
  );
}
