module MiscTasks
  # for creating city if it doesn't already exist and assigning the selected country's id to it
  # also returns the revised list of nested params for the create action in centers_controller to use
  def handle_city_creation(params)
    city_name = params[:address_attributes][:city_name]
    country_id = params[:address_attributes][:country_id]
    city = City.where(name: city_name, country_id: country_id, country_iso: (Country.find(country_id).iso)).first_or_create
    params[:address_attributes][:city_id] = city.id if city
    params
  end
end