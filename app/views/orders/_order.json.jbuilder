json.extract! order, :id, :food_item_id, :name, :phone, :email, :address, :quantity, :created_at, :updated_at
json.url order_url(order, format: :json)