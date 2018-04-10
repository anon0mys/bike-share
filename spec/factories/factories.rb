FactoryBot.define do
  factory :condition do
    date '8/29/2013'
    max_temperature_f { rand(75.0..90.0) }
    mean_temperature_f { rand(65.0..75.0) }
    min_temperature_f { rand(50.0..65.0) }
    mean_humidity { rand(65.0..75.0) }
    mean_visibility 10.0
    mean_wind_speed { rand(5.0..23.0) }
    precipitation { rand(0..2.5) }
    zip_code 941_07
  end
end
