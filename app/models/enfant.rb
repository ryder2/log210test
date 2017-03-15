class Enfant < ActiveRecord::Base
	has_many :demandes

	validates :residence, :presence => {:message => "*Veuillez spécifier une résidence."}
	validates :nom, :presence => {:message => "*Veuillez spécifier le nom de l'enfant."}
	validates :date_naissance, :presence => {:message => "*Veuillez spécifier la date de naissance."}
end
