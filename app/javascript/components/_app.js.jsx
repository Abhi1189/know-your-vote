import React from 'react';
import { Link, Route } from 'react-router-dom';
import Modal from 'react-responsive-modal';
import Quotes from "./_poli-quotes.js.jsx";
import Topic from "./_topic.js.jsx"
import axios from 'axios';

class App extends React.Component {
  state = {
    open: false,
    topics: []
  };

  onOpenModal = () => {
    this.setState({ open: true });
  };

  onCloseModal = () => {
    this.setState({ open: false });
  };

componentDidMount() {
  axios.get('/topics')
    .then((response) => {
      console.log("data:", response.data);
      this.setState({
        topics: response.data
      }, () => {
        console.log(this.state)
      })
    })
    .catch(function (error) {
      return error;
    });
}
  render() {
    const { open } = this.state;
    return (
      <div className="App">
        <div>
          <button type="button" onClick={this.onOpenModal}>Find my Poli-match</button>
        </div>
        <div>
          <Modal open={open} onClose={this.onCloseModal} center>
            <h2>Find Your Match</h2>
            <Quotes />
            <button>Disagree</button>
            <button>Agree</button>
          </Modal>
        </div>
        <Route exact={true} path="/" render={() => (
          <div>
            <h2>Current Topics</h2>
            {
              this.state.topics.map((topic, index) => {
                return (
                  <div className="col span_1_of_3 hometopics" key={index}>
                    <Link to={`/topics/${topic.name}`} className="title">
                      <span className="topic">{topic.name}</span>
                    </Link>
                  </div>
                )
              })
            }
          </div>
        )}/>
       <Route path="/topics/" component={Topic} topics={this.state.topics} />
      </div>
    )
  };
}

export default App;
