class Demande < ActiveRecord::Base
	enum service: {VS: "VS", EG: "EG", CTS: "CTS"}

    has_many :demande_enfants
    belongs_to :famille
end