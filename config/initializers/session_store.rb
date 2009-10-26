# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_testtask_session',
  :secret      => '7c76b4b1f9730b39add7d961d7c100ae68935be6db9812f8e556b4a2c04d75853adb096f2a40dd4a0ca8fc0c62910abc2c3ad5fa510f722b1dbbe19fe794ff6c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
