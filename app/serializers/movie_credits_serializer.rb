# frozen_string_literal: true

class MovieCreditsSerializer < Serializer
  PROPS = {
    include: {
      person: PersonSerializer::PROPS
    },
    only: %i[id]
  }.freeze

  SHAPE = {
    person: PersonSerializer::SHAPE
  }.freeze
end
