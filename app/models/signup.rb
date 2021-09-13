class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  validates :age, numericality:{greater_than:0, less_than:23}

end
