class BaseAPI < Grape::API
  default_format :json
  format :json
  formatter :json, Grape::Formatter::Jbuilder
  prefix :api

  mount V1::API

  if Rails.env.development?
    add_swagger_documentation(
      api_version: 'v1',
      mount_path: '/docs/v1',
      base_path: '/',
      hide_format: true,
      hide_documentation_path: true
    )
  end
end

