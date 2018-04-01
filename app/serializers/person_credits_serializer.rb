# frozen_string_literal: true

class PersonCreditsSerializer < Serializer
  PROPS = {
    include: {
      movie: MovieSerializer::PROPS
    },
    only: %i[id]
  }.freeze

  SHAPE = {
    movie: MovieSerializer::SHAPE
  }.freeze
end
