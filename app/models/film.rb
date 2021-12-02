class Film < ApplicationRecord
  belongs_to :director

  validates_presence_of :name, :rt_rank
  validates :nominated, inclusion: [true, false]
end