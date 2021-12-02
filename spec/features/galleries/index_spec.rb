require 'rails_helper'

RSpec.describe GalleriesController, feature: :type do
  describe 'instance methods' do
    it 'displays name of each parent record in the system' do
      gallery_1 = Gallerie.create(name: "Art 4 Us", non_profit: true, entry_cost: 4.75)
      gallery_2 = Gallerie.create(name: "Benji's Gallery", non_profit: false, entry_cost: 10)

      visit '/galleries'

      expect(page).to have_content(gallery_1.name)
      expect(page).to have_content(gallery_2.name)
    end
  end
end
