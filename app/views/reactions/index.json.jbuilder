json.array!(@reactions) do |reaction|
  json.extract! reaction, :id, :name, :explanation
  json.url reaction_url(reaction, format: :json)
end
