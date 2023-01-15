
#Rails Authentication Demo
- Using the `has_secure_password` method of ActiveModel & BCrypt allows password encryption and some password validations.

`http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html`

---

##Session:
- A `session` is a short-term place on a server where data can be persisted
- We can use this short-term storage to hang on to a user's id

##Authentication:
- A hashed password can be stored in a database
- When a user is trying to "sign-in", we can compare the stored hashed password with the newly hashed version of the currently entered password

---

##User Authentication steps
- A user's password is stored as an encrypted hash (password_digest)
- A user enters email and password to "sign-in"
- We can find user by the email address and compare encrypted versions of passwords
- If the correct password is entered... we store the user's id in a session
- We now have a current user signed in
- To log out... we must remove the user id from the session, i.e. set the user_id key to nil
