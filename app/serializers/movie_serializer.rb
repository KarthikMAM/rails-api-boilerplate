class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :release_date
end
