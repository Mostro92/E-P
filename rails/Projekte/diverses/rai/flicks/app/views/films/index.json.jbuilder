json.array!(@films) do |film|
  json.extract! film, :id, :titel, :rank
  json.url film_url(film, format: :json)
end
