require 'rails_helper'

describe 'User visits conditions index' do
  context 'as a visitor' do
    scenario 'they see all conditions' do
      conditions = create_list(:condition, 10)
      visit conditions_path

      expect(page).to have_content(conditions[0].date)
      expect(page).to have_content(conditions[1].max_temperature)
      expect(page).to have_content(conditions[2].mean_temperature)
      expect(page).to have_content(conditions[3].min_temperature)
      expect(page).to have_content(conditions[4].mean_humidity)
      expect(page).to have_content(conditions[6].mean_visibility)
      expect(page).to have_content(conditions[7].mean_wind_speed)
      expect(page).to have_content(conditions[9].precipitation)
    end
  end
end
