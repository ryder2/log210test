class VsDemande < ActiveRecord::Base
	belongs_to :demande

	validates :motif_pv, :presence => {:message => "*Veuillez spécifier un motif"}
	validates :motivations_pv, :presence => {:message => "*Veuillez spécifier une motivation."}
	validates :attitude_parent_pv, :presence => {:message => "*Veuillez spécifier une attitude."}
	validates :motif_pg, :presence => {:message => "*Veuillez spécifier le motif."}
	validates :personnes_autorisees_pg, :presence => {:message => "*Veuillez spécifier les personnes autorisées"}
	validates :attitude_parent_pg, :presence => {:message => "*Veuillez spécifier une attitude"}
	validates :jeux_favoris_pg, :presence => {:message => "*Veuillez spécifier les jeux favoris."}
	validates :gout_alimentaire_pg, :presence => {:message => "*Veuillez spécifier les gouts alimentaires."}
	validates :reaction_visite_pg, :presence => {:message => "*Veuillez spécifier la réaction."}
	validates :attitude_enfant_pg, :presence => {:message => "*Veuillez spécifier l'attitude."}

end
