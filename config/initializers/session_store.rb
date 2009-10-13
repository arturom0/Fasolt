# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fasolt_session',
  :secret      => '1ecbfa9fc5b9b2242782572e15cbc3c93cd9879cab15079f05fbf67dd23242a3e3b3e9d5495c17cada4eff4107a4da980ad7fc0067b5a78a7cd9abfda3aca01c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
