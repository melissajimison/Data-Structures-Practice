import React, {Component} from 'react';

class Gif extends Component {
  constructor(props) {
    super(props);
    console.log(props)

    this.state = {
      clicked: false
    };
  }

  handleOnClick = () => {
    this.setState({
       clicked: !this.state.clicked
     });
  }

  render() {
    const frameStyle = {
      border: "7px solid red"
    };

    return(
      <div
        className="gif-item"
        key={this.props.id}>
        <img
          style={this.state.clicked ? frameStyle : null}
          alt='baby yoda'
          src={this.props.imageUrl}
          onClick={() => {this.handleOnClick()}}/>
      </div>
    );
  }
}

export default Gif;
