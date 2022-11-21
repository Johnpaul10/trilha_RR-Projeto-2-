json.extract! filme, :id, :title, :release_year, :created_at, :updated_at
json.url filme_url(filme, format: :json)
