import React, {Component} from 'react';
import Gifs from './Gifs';
import './App.css';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: false,
      gifs: []
    };
  }

  componentDidMount() {
    const baseUrl = 'api.giphy.com/v1/gifs/search'
    const query = 'babyyoda'
    const api_key = process.env.REACT_APP_GIPHY_API_KEY

    fetch(`https://${baseUrl}?api_key=${api_key}&q=${query}&limit=5`)
      .then(res => res.json())
      .then(
        (result) => {
          this.setState({
            isLoaded: true,
            gifs: result.data
          });
        },
        // Note: it's important to handle errors here
        // instead of a catch() block so that we don't swallow
        // exceptions from actual bugs in components.
        (error) => {
          this.setState({
            isLoaded: true,
            error
          });
        }
      )
  }

  render() {
    const { error, isLoaded, gifs } = this.state;
    if (error) {
      return <div>Error: {error.message}</div>;
    } else if (!isLoaded) {
      return <div>Loading...</div>;
    } else {
      return (
        <Gifs
          gifs={this.state.gifs}
          handleOnClick={this.handleOnClick}
          clicked={this.clicked}/>
      );
    }
  }
}

export default App;
