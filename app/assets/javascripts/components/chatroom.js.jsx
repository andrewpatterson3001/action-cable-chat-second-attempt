// Message Component
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

// MessageBox Component
var MessageBox = React.createClass({
  render: function() {
    return (
      <div className="messageBox">
        <MessageList messages={this.props.messages} users={this.props.users}/>
      </div>
      );
  }
});

// MessageList Component
var MessageList = React.createClass({
  render: function() {
    var allAuthors = this.props.users.map(function(eachAuthor) {
      var authorHash = {}
      authorHash[eachAuthor.id] = eachAuthor.email
      return authorHash
    })
    var messageNodes = this.props.messages.map(function(eachMessage) {
      return (
        // this.props.users[messageAuthor]
        <Message author={allAuthors[eachMessage.user_id - 1][eachMessage.user_id]} content={eachMessage.content} key={eachMessage.id} />
        );
    });
    return (
      <div className="messageList">
        {messageNodes.reverse()}
      </div>
    );
  }
});
