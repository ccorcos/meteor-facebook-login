fb = 
  appId: ""
  secret: ""

ServiceConfiguration.configurations.remove
  service: "facebook"

ServiceConfiguration.configurations.insert
  service: "facebook"
  appId: fb.appId
  secret: fb.secret

Accounts.onLogin (obj) ->
  user = obj.user
  result = Meteor.http.get "https://graph.facebook.com/v2.0/me?fields=id,gender,name,friends,location",
    params:
      access_token: user.services.facebook.accessToken

  if result.error then console.log result.error

  profile = _.pick result.data, ['id', 'gender', 'name']
  profile.location = result.data.location?.name
  profile.friends = result.data.friends.data

  Meteor.users.update {_id:user._id}, {$set: {profile: profile}}
  return true

