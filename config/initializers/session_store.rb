# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_contractsigner2_session',
  :secret      => '7ac7f25197caeaaeb40838269e21fdb2f44ac23849a85f185df612551010346895d47a03fac5bc487062aa8306cd06831bb0af59f157121e3bebe5e6c44ba20b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
