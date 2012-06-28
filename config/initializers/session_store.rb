# Be sure to restart your server when you modify this file.

## INSERIDO O TEMPO DE EXPIRAÇÃO DA SESSÃO
Purchasing::Application.config.session_store :cookie_store, :key => '_purchasing_session', :expire_after => 30.minutes


# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Purchasing::Application.config.session_store :active_record_store
