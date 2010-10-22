# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_guestbook_session',
  :secret      => '22187bb596ea53df4a8f6ece57d65fccc857804c42a8179d9875a6825cc17ac4f3e7a250f997279b4d5be9d0296517e2f3af5a6cbeeaa2f1e7d2c514e200feb3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
