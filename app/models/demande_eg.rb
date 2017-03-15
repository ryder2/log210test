class DemandeEg < ActiveRecord::Base
	belongs_to :demande
	validates :motif, :presence => {:message => "*Veuillez spécifier un motif"}
	validates :date_separation, :presence => {:message => "*Veuillez spécifier une date de séparation."}
	validates :description_enfant, :presence => {:message => "*Veuillez spécifier une description de l'enfant."}
	validates :attitude_parent, :presence => {:message => "*Veuillez spécifier l'attitude du parent."}
	validates :attitude_enfant, :presence => {:message => "*Veuillez spécifier l'attitude de l'enfant."}
end
