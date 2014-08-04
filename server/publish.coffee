# Publications
# ------------
# Define the database publications

# publish all usernames and profiles
Meteor.publish "users", -> Meteor.users.find({})
