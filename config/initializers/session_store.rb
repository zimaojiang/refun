# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_refun_session',
  :secret      => 'a640afddd53252d118a11ce03989c5aac4eb891a9bd6a90e8c766ed0107b6864cbc5283381fc8876d0bfc406e5ddb4ebe5533a5f2d7bd452cc88de9615f93670'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
