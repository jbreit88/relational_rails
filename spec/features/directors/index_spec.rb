require 'rails_helper'

RSpec.describe '/director/index.html.erb', type: :feature do
  let!(:director_1) { Director.create!(name: 'Wes Anderson', imdb_rank: 20, tv_credit: false) }
  let!(:director_2) { Director.create!(name: 'Steven Spielberg', imdb_rank: 1, tv_credit: true) }

  describe 'as a user' do
    describe 'when I visit the directors index' do
      it 'displays all the directors names' do
        visit '/directors'

        expect(page).to have_content(director_1.name)
        expect(page).to have_content(director_2.name)
      end
    end
  end
end