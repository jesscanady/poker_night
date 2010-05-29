# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_poker_session',
  :secret      => '4e66516a81f64903585dc8be2e41150e1ddf5efef776b93cb28ea758d21a98e9f31c4d9b51c9f974994267c872b9256e3a3cc30e11a9e83dfc5b3857015e54dc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
