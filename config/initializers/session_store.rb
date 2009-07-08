# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_game_tools_session',
  :secret      => 'fef151d81602c05726c7d5d830b9ba69f3f2d61ed149bd79edb88e02e74758e88281b8fa28676ffa9616330d6772e1eb52aab906b1f59f779f9b5af1fbc073d4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
