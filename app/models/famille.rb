class Famille < ActiveRecord::Base
	has_many :notes
	has_many :demandes, foreign_key: :famille_id, primary_key: :dossier_id
end
