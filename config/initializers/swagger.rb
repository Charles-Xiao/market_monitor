GrapeSwaggerRails.options.url      = '/api/docs/v1'
GrapeSwaggerRails.options.app_name = '项目文档'

GrapeSwaggerRails.options.app_url = "http://ec2-52-220-140-213.ap-southeast-1.compute.amazonaws.com/"

# GrapeSwaggerRails.options.before_filter_proc = proc {
  # GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
# }

module GrapeSwaggerRails
  module HttpBaseAuth
    extend ActiveSupport::Concern

    included do
      http_basic_authenticate_with name: 'root', password: '19931017xy'
    end
  end
end

GrapeSwaggerRails::ApplicationController.send :include, GrapeSwaggerRails::HttpBaseAuth

