class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/bakeries' do
    bakeries = Bakery.all
    bakeries.to_json
  end
  get "/bakeries/:id" do
    bakeries = Bakery.find(params[:id])
    bakeries.to_json
  end
  get "/baked_goods/by_price" do
    baked_goods = BakedGood.all.order(:price) 
    baked_goods.to_json
  end
  get "/baked_goods/most_expensive" do
    baked_goods = BakedGood.all.order(:price).reverse
    baked_goods.to_json
  end
end

