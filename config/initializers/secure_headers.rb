# Enable secure headers
SecureHeaders::Configuration.default if Rails.env.production?