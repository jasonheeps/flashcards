import React, { useState, useEffect } from 'react';
// import { Link } from 'react-router-dom';

export default function Flashcards(props) {
  const [flashcards, setFlashcards] = useState([]);

  useEffect(() => {
    const url = '/api/v1/flashcards/index';
  }, []);
}
