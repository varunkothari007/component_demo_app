
# Commponents Base Application

## Installation

1. Get the code. Clone this git repository https://github.com/varunkothari007/component_demo_app

2. Install the required gems by running the following command in the project root directory:

		bundle install

3. Create and initialize the database

		rake db:create
		rake db:migrate

4. Start the development server

		rails server

5. Open http://localhost:3000 in your browser


## API for Testing 

1. Post
------------------------------------------
	1.1 get All posts

		get:-    /posts
		
	1.2 get a post

		get:-    /posts/:id

	1.3 create a post

		post:-    /posts
		paramter:-   body, title

	1.4 edit a post
			
		put:-  	/posts/:id

	1.5 delete a post
			
		destroy:-    /posts/:id



2. Comments
------------------------------------------

	2.1 get commets according to post

		get:-    /comments?post_id=4

	2.2 get a comment

		get:-    /comments/:id

	2.3 create a comment ( post_id* must)
		
		post:-    /comments
		paramter:-   body, post_id

	2.4 edit/update comment

		put:-  	/comments/:id

	2.5 delete comment

		destroy:-    /comments/:id


