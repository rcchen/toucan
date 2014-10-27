Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, Rails.application.secrets.google_client_id, Rails.application.secrets.google_client_secret, {
        :name => "google",
        :scope => "email, profile, plus.me",
        :prompt => "select_account",
        :image_aspect_ratio => "square",
        :image_size => 50
    }
end