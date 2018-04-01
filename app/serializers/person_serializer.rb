class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :dob
end
