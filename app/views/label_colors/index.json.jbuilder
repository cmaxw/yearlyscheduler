json.array!(@label_colors) do |label_color|
  json.extract! label_color, :id, :name, :color
  json.url label_color_url(label_color, format: :json)
end
