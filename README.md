# Facebook Login with Meteor

This is a simple app that demonstrates logging in with Facebook. It requests some permissions and fetches data from the Graph API every time the user logs in. User "friends" are only those that mutually use the app.

# Getting Started

You need to make a Facebook App and get the appId and the secret. Put that in `server/accounts.coffee`. Make sure the app status is on.