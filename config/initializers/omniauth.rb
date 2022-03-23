Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    provider :google_oauth2, ENV['683568772032-vte3nknj9a0ar6dafet9fadm08qall3o.apps.googleusercontent.com'], ENV['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']
end