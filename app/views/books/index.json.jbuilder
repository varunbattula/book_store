json.array!(@books) do |book|
  json.extract! book, :id, :name, :title, :edition
  json.url book_url(book, format: :json)
end
