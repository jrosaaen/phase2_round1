get '/' do
  api = HackerNews::Client.new(user_id: 3, title: "some fucking title", body: "Some fucking story")
  # p api.users
  # p api.posts
  p api.user_posts
  # p api.user_comments_on_post
    # p api.new_post_from_user
    erb :index


end
#api.users output {\"user\":{\"bio\":\"Dolor unde error non voluptatum. Vero ut eos est quia dicta. Dignissimos asperiores deleniti iusto dolor quia autem.\",\"email\":\"clemens@collier.info\",\"id\":1,\"name\":\"Skye Lockman\",\"username\":\"fritz_murray\"}


#api.posts output {\"post\":{\"body\":\"Nulla explicabo architecto dolor sit non. Cum repellendus sapiente. Dignissimos et ut sed minima aspernatur amet ducimus.\",\"id\":1,\"title\":\"pariatur\",\"user_id\":3}},


#api.user_posts output "[{\"post\":{\"body\":\"Nulla explicabo architecto dolor sit non. Cum repellendus sapiente. Dignissimos et ut sed minima aspernatur amet ducimus.\",\"id\":1,\"title\":\"pariatur\",\"user_id\":3}}]"


#api.user_comments_on_post output "[{\"comment\":{\"body\":\"Quia ad sed deserunt deleniti. Earum error modi ut blanditiis. Corporis optio quis facilis. Modi fuga ea nulla illum.\",\"id\":1,\"post_id\":1,\"user_id\":3}},{\"comment\":{\"body\":\"Eius ex voluptas blanditiis ad temporibus debitis consequatur. Possimus rerum ab vitae id nostrum dolorum rem. Quasi labore voluptas qui molestias eos et. In laboriosam qui voluptatem in molestiae.\",\"id\":2,\"post_id\":1,\"user_id\":3}}]"
