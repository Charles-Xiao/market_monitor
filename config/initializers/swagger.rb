if Rails.env.development? or Rails.env.staging?
  GrapeSwaggerRails.options.url      = '/api/docs/v1'
  GrapeSwaggerRails.options.app_name = '项目文档'


  GrapeSwaggerRails.options.before_filter_proc = proc {
    GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
  }

  module GrapeSwaggerRails
    module HttpBaseAuth
      extend ActiveSupport::Concern

      included do
        http_basic_authenticate_with name: 'root', password: '19931017xy'
      end
    end
  end

  GrapeSwaggerRails::ApplicationController.send :include, GrapeSwaggerRails::HttpBaseAuth
end

