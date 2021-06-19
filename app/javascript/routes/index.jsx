import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';

import Flashcards from '../components/flashcards';

export default (
  <Router>
    <Switch>
      <Route path='/flashcards' exact component={Flashcards} />
    </Switch>
  </Router>
);
