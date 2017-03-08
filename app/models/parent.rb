class Parent < ActiveRecord::Base
	enum statut: [:gardien, :tuteur, :visiteur, :acceuil]
	has_many :demandes

	has_many :parentinfos
    accepts_nested_attributes_for :parentinfos
end
