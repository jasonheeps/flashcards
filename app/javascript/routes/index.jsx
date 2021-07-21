import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';

import Flashcards from '../components/flashcards';
import Flashcard from '../components/flashcard';

export default (
  <Router>
    <Switch>
      <Route path='/flashcards' exact component={Flashcards} />
      <Route path='/flashcards/:id' exact component={Flashcard} />
    </Switch>
  </Router>
);
