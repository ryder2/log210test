json.extract! note, :id, :texte, :createur, :dateCreation,
json.url note_url(note, format: :json)