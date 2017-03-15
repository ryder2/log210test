class Motif < ActiveRecord::Base
	validates :nom, :presence => {:message => "*Veuillez spécifier un nom de motif."}
	has_many :demande
end
