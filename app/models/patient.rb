class Patient < ActiveRecord::Base
    belongs_to :ailment
    has_many :doctors, through: :ailments
end