class Famille < ActiveRecord::Base
	validates :nom, :presence => {:message => "*Veuillez spécifier un nom de famille."}
	validates :dossier_id, :presence => {:message => "*Veuillez spécifier un numéro de dossier."}
	has_many :notes
	has_many :demandes, foreign_key: :famille_id, primary_key: :dossier_id
end
