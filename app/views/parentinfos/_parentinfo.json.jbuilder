json.extract! parentinfo, :id, :courriel, :telephone_res, :nocivique, :rue, :appartement, :ville, :code_postal, :province, :nom_urgence, :numero_urgence, :note, :parent_id, :created_at, :updated_at
json.url parentinfo_url(parentinfo, format: :json)