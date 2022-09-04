class Ailment < ActiveRecord::Base
    has_many :patients
    has_many :doctors
end