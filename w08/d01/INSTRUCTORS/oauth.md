# OAuth

## Resources
* Avdi Grimm's tweets and a few replies
	* [Does anyone else experience a phenomenon where no matter how many times you read about OAuth[1|2] your brain just shuts down?](https://twitter.com/avdi/status/473959898581983232)
	* [Is there an "Oauth for Idiots", or do I need to write it?](https://twitter.com/avdi/status/473959979456548864)
	* [OAuth client must present server with a TOKEN. Server will return a COOKIE. Give the cookie to the MONKEY. The monkey will lead you to a MAP](https://twitter.com/avdi/status/473960505162219520)
* [Wiki entry](http://en.wikipedia.org/wiki/OAuth)
* [Oauth Bible](http://oauthbible.com/)
* [OAuth main website](http://oauth.net/)
* [OAuth official doc](http://oauth.net/documentation/)

## Twitter OAuth flows list
[Twitter Flow list](https://dev.twitter.com/docs/auth/obtaining-access-tokens)

* Want to offer a "Sign in with Twitter" button on your website.. 
	* [Sign in with Twitter](https://dev.twitter.com/docs/auth/implementing-sign-twitter)
* Want to read or post Twitter data on behalf of visitors to your website.. 
	* [3-legged OAuth](https://dev.twitter.com/docs/auth/3-legged-authorization)
* Have a mobile, desktop, or embedded app which can't access a browser.. 
	* [PIN-based OAuth](https://dev.twitter.com/docs/auth/pin-based-authorization)
* Offer an API where clients send you data on behalf of Twitter users.. 
	* [OAuth Echo](https://dev.twitter.com/docs/auth/oauth/oauth-echo)
* Have an iOS5-based integration and need access tokens for server-side integrations...		
	* [Using Reverse Auth](https://dev.twitter.com/docs/ios/using-reverse-auth)
* Want to issue authenticated requests on behalf of the application itself 
	* [Application-only authentication ](https://dev.twitter.com/docs/auth/application-only-auth)

## Instagram OAuth (2.0)
* [Instagram](http://instagram.com/developer/authentication/)

## Omniauth
Use the Omniauth gem with a simple Sinatra app, and the Twitter and Instagram strategies, to authenticate a user. Store the information in the session for now, don't worry about the database. Assume the user is the only user (and you are, after all.) Points of note:

1. Twitter uses OAuth 1.0
2. Instagram uses OAuth 2.0
3. Documentation sometimes sucks
4. This is hard.
5. You're not an island. Ask for help. Pair if you want. Or group up. Whatever.
6. Yep, it's called a "callback". It's the endpoint where the third-service party ... Calls back your app. It's not the same as a Javascript callback, but it's the same idea.

Valuable resources:

* [Omniauth](https://github.com/intridea/omniauth)
* [List of strategies](https://github.com/intridea/omniauth/wiki/List-of-Strategies)
* [Omniauth Twitter](https://github.com/arunagw/omniauth-twitter)
* [Omniauth Instagram](https://github.com/ropiku/omniauth-instagram)

#### Bonus: done early? Set up the routes and logic yourself!


### The following material is very valuable
* [Pretty good guide as recommended by Avdi Grimm](http://aaronparecki.com/articles/2012/07/29/1/oauth2-simplified)
* [A sample client/server pair for OAuth in sinatra](https://github.com/halorgium/sinatra-oauth) 
* [Oauth 2.0: The good, the bad, the ugly](http://code.tutsplus.com/articles/oauth-20-the-good-the-bad-the-ugly--net-33216)
* [Eran Hammer: Introducing OAuth 2.0](http://hueniverse.com/2010/05/15/introducing-oauth-2-0/)
* [Eran Hammer: OAuth 2.0 and the road to hell](http://hueniverse.com/2012/07/26/oauth-2-0-and-the-road-to-hell/)
* [Eran Hammer: on leaving OAuth](http://hueniverse.com/2012/07/30/on-leaving-oauth/)
* [The OAuth sky is not falling: response to Eran Hammer leaving](http://www.thread-safe.com/2012/07/the-oauth-2-sky-is-not-falling.html)
* [Joe Gregorio: response to Eran Hammer leaving](https://plus.google.com/u/0/118148240205592032989/posts/Qudedrg7JqJ)
