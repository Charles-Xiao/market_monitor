class V1::Golds < Grape::API

  namespace :golds do
    desc '获取gold相关数据' do
    end
    params do
      optional :id,           type: String, desc: '需要获取用户的id'
    end
    get :prices, jbuilder: 'price.jbuilder' do
      @price = Gold.all
    end
  end
end
