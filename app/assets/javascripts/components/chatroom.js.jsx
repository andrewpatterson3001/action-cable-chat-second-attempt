var Message = React.createClass({
  propTypes: {
    content: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Content: {this.props.content}</div>
      </div>
    );
  }
});