var Message = React.createClass({
  propTypes: {
    author: React.PropTypes.string,
    content: React.PropTypes.string
  },

  render: function() {
    return (
        <p><b>{this.props.author}</b>: {this.props.content}</p>
    );
  }
});

