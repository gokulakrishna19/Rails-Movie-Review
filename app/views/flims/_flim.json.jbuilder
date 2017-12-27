json.extract! flim, :id, :title, :description, :movie_length, :director, :rating, :created_at, :updated_at
json.url flim_url(flim, format: :json)
