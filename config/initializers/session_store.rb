if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_application-tracker', domain: 'https://nostalgic-kalam-c12902.netlify.app/'
else
  Rails.application.config.session_store :cookie_store, key: '_application-tracker'
end