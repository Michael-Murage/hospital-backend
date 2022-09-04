class Doctor < ActiveRecord::Base
    belongs_to :ailment
    has_many :patients, through: :ailments

    
end
