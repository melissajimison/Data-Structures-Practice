import React, {Component} from 'react';
import Ninjas from './Ninjas';
import AddNinja from './AddNinja';

class App extends Component {
  state = {
    ninjas: [
      {name: 'melissa', age: 30, belt:'green'},
      {name: 'Jeff', age: 31, belt:'pink'}
    ]
  }

  addNinja = (ninja) => {
    let ninjas = [...this.state.ninjas, ninja]
    this.setState({ninjas: ninjas})
  }

  deleteNinja = (ninjaId) => {
    let ninjas = this.state.ninjas.filter(ninja => ninja.id !== ninjaId);

    this.setState({ninjas: ninjas})
  }

  render() {
    return (
      <div className="App">
        <h1> The Ninjas App </h1>
        <p> All the ninjas </p>
        <Ninjas ninjas={this.state.ninjas} deleteNinja={this.deleteNinja}/>
        <AddNinja addNinja={this.addNinja}/>
      </div>
    );
  }
}

export default App;
