class Competence < ActiveRecord::Base
 has_and_belongs_to_many :pins
end
