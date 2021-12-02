require 'rails_helper'

RSpec.describe Director, type: :model do
  let!(:director_1) { Director.create!(name: 'Wes Anderson', imdb_rank: 20, tv_credit: false) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:imdb_rank) }
    # it { should validate_presence_of(:tv_credit) }
  end
end