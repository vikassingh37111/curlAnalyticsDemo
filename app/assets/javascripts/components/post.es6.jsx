class Post extends React.Component {
  render () {
  	let post = this.props.post;
  	let layout = 
	  	<div>
	  		<h4> {post.title} </h4>
	  		<p> {post.body} </p>    	
	  	</div>;

    return (layout);
  }
}


