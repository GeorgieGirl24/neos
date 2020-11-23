require_relative 'near_earth_objects'
require_relative 'format_data'

format = FormatData.new
format.welcome
@@date = gets.chomp
@neos = NearEarthObjects.new(@@date)
@asteroid_details = @neos.find_neos_by_date
format.assign_data(@asteroid_details)
format.create_columns
format.presentation_view
