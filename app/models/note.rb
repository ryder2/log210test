class Note < ActiveRecord::Base
	validates :texte,      :presence => {:message => "*Veuillez spécifier du texte."}	
	validates :famille_id, :presence => {:message => "*Veuillez spécifier une famille."}
	validates :users_id,   :presence => {:message => "*Veuillez spécifier un utilisateur."}
	
	belongs_to :famille,  :foreign_key => "familles_id"
	belongs_to :createur, :class_name => "User", :foreign_key => "user_id"
end
