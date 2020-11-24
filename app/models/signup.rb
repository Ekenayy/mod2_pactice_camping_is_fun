class Signup < ApplicationRecord

    belongs_to :camper
    belongs_to :activity
    
    validates_presence_of :time

end
