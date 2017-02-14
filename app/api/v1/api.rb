module V1
  class API < Grape::API
    version 'v1'
    
    mount V1::Golds
  end
end
