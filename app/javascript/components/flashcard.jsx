import React, { useState, useEffect } from 'react';
// import { Link } from 'react-router-dom';

export default function Flashcard(props) {
  const [flashcard, setFlashcard] = useState([]);
  const id = props.match.params.id;

  useEffect(() => {
    const url = `/api/v1/flashcards/${id}`;
    fetch(url)
      .then(response => {
        if (response.ok) {
          return response.json();
        }
        throw new Error('Network response was not ok.');
      })
      .then(response => setFlashcard(response))
      .catch(() => props.history.push('/'));
  }, []);

  const card = (
    <div key={id}>
      <p>{`${flashcard.question}`}</p>
      <p>{`Solution: ${flashcard.solution}`}</p>
    </div>
  );

  return (
    <div>
      {card}
    </div>
  );
}
