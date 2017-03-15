class Demande < ActiveRecord::Base
	enum service: {VS: "VS", EG: "EG", CTS: "CTS"}
	
	has_many :vs_demandes
	has_many :demande_egs
    has_many :demande_enfants
    belongs_to :famille, foreign_key: :famille_id, primary_key: :dossier_id
	belongs_to :motif
	belongs_to :user
	
	validates :service, :presence => {:message => "*Veuillez spécifier un service"}
	validates :famille_id, :presence => {:message => "*Veuillez spécifier une famille"}
	validates :frequence, :presence => {:message => "*Veuillez spécifier une fréquence"}
	validates :demandeur, :presence => {:message => "*Veuillez spécifier un demandeur"}
	validates :payee_par, :presence => {:message => "*Veuillez spécifier la personne qui paie"}
	validates :motif_id, :presence => {:message => "*Veuillez spécifier un motif"}
end
