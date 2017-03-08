class Note < ActiveRecord::Base
	belongs_to :famille,  :foreign_key => "familles_id"
	belongs_to :createur, :class_name => "User", :foreign_key => "user_id"
end
