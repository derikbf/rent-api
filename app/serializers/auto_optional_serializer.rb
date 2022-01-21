class AutoOptionalSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :air_bag,
                                      :eletric_glass,  
                                      :eletrick_lock, 
                                      :air_conditioner, 
                                      :alarm, 
                                      :sound, 
                                      :on_board_computer, 
                                      :abs_brakes, 
                                      :reverse_sensor, 
                                      :reverse_camera                                  

  link(:self) {api_v1_rental_company_auto_optionals_url(object.id)}
end
