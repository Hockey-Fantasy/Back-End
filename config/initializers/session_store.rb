if Rails.env === "production"
  Rails.application.config.session_store :cookie_store,
    key: "_Hockey Fantasy Sports",
    domain: "http://localhost:3000"
else
  Rails.application.config.session_store :cookie_store,
    key: "_Hockey Fantasy Sports"
end
