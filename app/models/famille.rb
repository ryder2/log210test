class Famille < ActiveRecord::Base
	has_many :notes
	has_many :demandes
end
