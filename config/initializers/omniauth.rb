OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '279668475528096', '0045946867134f705a88c84f7e55c22f'
end