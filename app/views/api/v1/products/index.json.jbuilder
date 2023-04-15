json.array! @products do |product|
  json.extract! product, :id, :name, :description, :price, :state, :image, :time_preparation, :category_id, :buy, :count, :favorite
end
