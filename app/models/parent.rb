class Parent < ActiveRecord::Base
	enum statut: [:gardien, :tuteur, :visiteur, :acceuil]
	has_many :demandes

	has_many :parentinfos
    accepts_nested_attributes_for :parentinfos

	validates :statut, :presence => {:message => "*Veuillez spécifier un statut."}
	validates :date_naissance, :presence => {:message => "*Veuillez spécifier une date de naissance."}
	validates :nom, :presence => {:message => "*Veuillez spécifier un nom."}
	validates :demande_id, :presence => {:message => "*Veuillez spécifier un numéro de demande."}
end
