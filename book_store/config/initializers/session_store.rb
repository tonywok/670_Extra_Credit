# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_book_store_session',
  :secret      => 'd171cad16ec1c96f19a4e2d1fac3f84250e55be76fd1f17446ee99777a2020dd9338ea56813fcce50b5b39f899b86554fdb6ad0fcffb677622b4952370845c19'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
