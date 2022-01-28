class AutoSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :unit_price, 
    :rental_company_id, :category_id, :auto_brand_id, :auto_type_id,
    :auto_year_id, :auto_mileage_id, :auto_power_id, :auto_fuel_id,
    :auto_exchange_id, :auto_direction_id, :auto_color_id, :auto_door_id,
    :auto_plate_id, :auto_model_id, :auto_optional_id  

  link(:self) {api_v1_rental_company_auto_url(object.id)}
end
