# OAuth Challenge

## Learning Competencies

- What's OAuth
- How OAuth works
- Using OAuth to authenticate an API

## Summary
In this challenge you will make LinkedIn API calls using OAuth 2.0. You are NOT
allowed to use any OAuth or API gems. You will implement this challenge by using
[Faraday Gem](https://github.com/lostisland/faraday) to make http requests.

## Releases

### Release 0: Starting with OAuth
- Understand what is OAuth, spend sometime [reading about it](http://bit.ly/AqN5GG).
- Follow steps 1-3 from the [Linked In API Docs](https://developer.linkedin.com/documents/authentication)

### Release 1: Make Requests
- Save the access token for each user in the databas'e (for future use).
- Make API requests against the user's profile:
  - GET private profile of a user
  - GET public profile of a user
  - Look at the API docs and find what other actions you can do on behalf of the user.

### Release 3: Create a Gem
How do many gems come to existance? through projects like this one. While working on a project,
some smart engineers like yourselves decide to share their work and findings with the rest of
the world. After solving the problem of connecting to LinkedIn API through OAuth, you decided to share that
awesome work with the world. Your mission is to create a Gem that easily allows users
to connect and communicate with the LinkedIn API through OAuth. Through your gem, the user
shouldn't have to worry about things like Faraday or other dependencies. All they need to do is
initialize an object with their LinkedIn API key and secret and use that object for all OAuth and
API interactions. Bundler provides a [great and easy way](http://bundler.io/v1.6/rubygems.html) to create a gem skeleton.

## Resources
https://developer.linkedin.com/documents/authentication
