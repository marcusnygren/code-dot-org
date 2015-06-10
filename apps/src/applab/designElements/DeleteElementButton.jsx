/* global $ */
var React = require('react');

/**
 * A delete button that will also ask for confirmation when shouldConfirm is
 * true.
 */
var DeleteElementButton = React.createClass({
  propTypes: {
    shouldConfirm: React.PropTypes.bool.isRequired,
    handleDelete: React.PropTypes.func.isRequired
  },

  getInitialState: function () {
    return {
      confirming: false
    };
  },

  handleDeleteInternal: function(event) {
    if (this.props.shouldConfirm) {
      this.setState({confirming: true});
    } else {
      this.finishDelete();
    }
  },

  finishDelete: function () {
    this.props.handleDelete();
  },

  abortDelete: function (event) {
    this.setState({confirming: false});
  },

  render: function() {
    var buttonStyle = {
      paddingTop: '5px',
      paddingBottom: '5px',
      fontSize: '14px',
      marginLeft: 0
    };

    var redButtonStyle = $.extend({}, buttonStyle, {
      backgroundColor: '#c00', // $red
      color: 'white'
    });

    var confirm;
    if (this.state.confirming) {
      return (
        <div>
          Delete?
          <button
            style={buttonStyle}
            onClick={this.abortDelete}>
            No
          </button>
          <button
            style={redButtonStyle}
            onClick={this.finishDelete}>
            Yes
          </button>
        </div>
      );
    }
    return (
      <div>
        <button
          style={redButtonStyle}
          onClick={this.handleDeleteInternal}>
          Delete
        </button>
      </div>
    );
  }
});

module.exports = DeleteElementButton;
