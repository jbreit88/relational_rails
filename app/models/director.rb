class Director < ApplicationRecord
  has_many :films
  
  validates_presence_of :name, :imdb_rank
  validates :tv_credit, inclusion: [true, false]
end