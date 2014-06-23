<!-- ##Get API key
|Resource|Description|
|--------|-----------|
|GET /api_key|Generates a new unique API key.| -->
<!--[GET] API key-->

##Users
|Resource | Description |
|---------|-------------|
|GET /users | Returns a collection of all of the registered users.|


##Posts
|Resource | Description |
|---------|-------------|
|GET /posts|Returns a collection of every post by registered users.|
|GET /users/:id/posts|Returns a collection of every post from the user identified by the id parameter.|
|POST /users/:id/posts|Creates a new post for the user specified by the id parameter. Users must provide a title and some body content for the post to be valid. Parameters must be :title and :body. Returns the new post as an object.|


##Comments
|Resource | Description |
|---------|-------------|
|GET /users/:id/posts/:post_id/comments|Returns a collection of every comment by a user for a specific post.|
|POST /users/:id/posts/:post_id/comments|A user can create a new comment for a specified post. User must provide a body content for the comment to be valid. Returns the new comment as an object.|
