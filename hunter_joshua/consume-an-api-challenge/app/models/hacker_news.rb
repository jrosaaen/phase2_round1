module HackerNews

  class Client
    include HTTParty

    base_uri "http://127.0.0.1:9393"

    def initialize(args)
      @id = args[:user_id]
      @post_id = args[:post_id]
      @title = args[:title]
      @body = args[:body]
    end

    def users
      response = self.class.get("/users", {
        query: { with: 'parameter' }
        })
      return response.body
    end

    def posts
      response = self.class.get("/posts", {
        query: { with: 'parameter' }
        })
      return response.body
    end

    def user_posts
      response = self.class.get("/users/#{@id}/posts", {
        query: { with: 'parameter' }
        })
      return response.body
    end

    def user_comments_on_post
      response = self.class.get("/users/#{@id}/posts/#{@post_id}/comments", {
        query: { with: 'parameter' }
        })
      return response.body
    end

    def new_post_from_user
      p'******************'
      p @title
      p'******************'
      p @body
      p'******************'
      response = self.class.post("/users/#{@id}/posts", {
        body: {
          title: "#{@title}",
          body: "#{@body}"
          }
        })
      return response.body
    end

  end

end
