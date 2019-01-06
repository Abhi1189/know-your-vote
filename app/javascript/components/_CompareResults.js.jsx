import React, { Component } from 'react';
import axios from 'axios';
import { Bar, Line, Radar } from 'react-chartjs-2';
import ScoreGraph from './_ScoreGraph.js'

class CompareResults extends Component {
  constructor(props) {
    super(props)
    this.state = {
      results: [],
      grnRes: [],
      ndpRes: [],
      libRes: [],
      cpRes: []
    }
  }

  componentDidMount() {
    axios.get('/results')
    .then((response) => {
      this.setState({
        results: response.data }, () => {
        }).bind(this)
    })
    .catch(function (error) {
      return error;
    });
  }

  resultsSplitter = res => {
    const { results, grnRes, ndpRes, libRes, cpRes } = this.state;
    res.forEach(function(party) {
      grnRes.push(party.grn);
      ndpRes.push(party.ndp)
      libRes.push(party.lib)
      cpRes.push(party.cp)
    })

  }

  average = arr => arr.reduce( ( p, c ) => p + c, 0 ) / arr.length;

  render() {
    console.log("this.props.count = ", this.props.count)
    const myGrn = this.props.count[1];
    const myNdp = this.props.count[2];
    const myLib = this.props.count[3];
    const myCp = this.props.count[4];

    const { results, grnRes, ndpRes, libRes, cpRes } = this.state;

    const grnAvg = 0;
    const ndpAvg = 0;
    const libAvg = 0;
    const cpAvg = 0;

    if (results.length === 0) {
      return <p>Loading...</p>
    }
    if ((this.state) && (grnRes.length <= 1)) {
      this.resultsSplitter(this.state.results);
      this.grnAvg = this.average(grnRes);
      this.ndpAvg = this.average(ndpRes);
      this.libAvg = this.average(libRes);
      this.cpAvg = this.average(cpRes);
    }

    const data = {
      labels: ['GRN', 'NDP', 'LIB', 'CP'],
      datasets: [
        {
          label: 'The Current Average',
          fill: false,
          lineTension: 0.1,
          backgroundColor: 'rgba(255,92,192,0.4)',
          borderColor: 'rgba(255,92,192,1)',
          borderCapStyle: 'butt',
          borderDash: [],
          borderDashOffset: 0.0,
          borderJoinStyle: 'miter',
          pointBorderColor: 'rgba(255,92,192,1)',
          pointBackgroundColor: '#fff',
          pointBorderWidth: 1,
          pointHoverRadius: 5,
          pointHoverBackgroundColor: 'rgba(255,92,192,1)',
          pointHoverBorderColor: 'rgba(220,220,220,1)',
          pointHoverBorderWidth: 2,
          pointRadius: 1,
          pointHitRadius: 10,
          data: [this.grnAvg, this.ndpAvg, this.libAvg, this.cpAvg]
        },
        {
          label: 'Your Results',
          fill: false,
          lineTension: 0.1,
          backgroundColor: 'rgba(75,192,192,0.4)',
          borderColor: 'rgba(75,192,192,1)',
          borderCapStyle: 'butt',
          borderDash: [],
          borderDashOffset: 0.0,
          borderJoinStyle: 'miter',
          pointBorderColor: 'rgba(75,192,192,1)',
          pointBackgroundColor: '#fff',
          pointBorderWidth: 1,
          pointHoverRadius: 5,
          pointHoverBackgroundColor: 'rgba(75,192,192,1)',
          pointHoverBorderColor: 'rgba(220,220,220,1)',
          pointHoverBorderWidth: 2,
          pointRadius: 1,
          pointHitRadius: 10,
          data: [myGrn, myNdp, myLib, myCp]
        }
      ]
    };

    return(
      <div>
        <section className="results-card">
          <div className="mobile-modal-body">
              <div className="announcement">
                <h4>See how you compare...</h4>
              </div>
            <div className="matched-with">
              <Line data={data} />
            </div>
            <div className="matched-with">
              <span className="leader-result quotearea">
              </span>
            </div>
            <br />
            <div className="matched-with">
              <div className=""></div>
              <div className=""></div>
              <div className=""></div>
              <div className="party-result">
              </div>
              <div className=""></div>
              <div className=""></div>
              <div className=""></div>
            </div>
          </div>
        </section>
      </div>
    )
  }
}

export default CompareResults;
