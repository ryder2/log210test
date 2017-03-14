class Demande < ActiveRecord::Base
	enum service: {VS: "VS", EG: "EG", CTS: "CTS"}
	
	has_many :vs_demandes
	has_many :demande_egs
    has_many :demande_enfants
    belongs_to :famille, foreign_key: :famille_id, primary_key: :dossier_id
	belongs_to :motif
	belongs_to :user
end