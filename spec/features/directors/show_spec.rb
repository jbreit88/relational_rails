require 'rails_helper'

RSpec.describe '/directors/show.html.erb', type: :feature do
  let!(:director_1) { Director.create!(name: 'Wes Anderson', imdb_rank: 20, tv_credit: false) }
  let!(:director_2) { Director.create!(name: 'Steven Spielberg', imdb_rank: 1, tv_credit: true) }

  describe 'as a user' do
    describe 'when I visit the director id' do
      it 'shows attributes for the director' do
        visit "/directors/#{director_1.id}"
        
        expect(page).to have_content(director_1.name)
        expect(page).to have_content(director_1.imdb_rank)
        expect(page).to have_content(director_1.tv_credit)
        
        visit "/directors/#{director_2.id}"
        
        expect(page).to have_content(director_2.name)
        expect(page).to have_content(director_2.imdb_rank)
        expect(page).to have_content(director_2.tv_credit)
      end
    end
  end
end