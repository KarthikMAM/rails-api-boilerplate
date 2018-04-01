# frozen_string_literal: true

class MoviePageSerializer < Serializer
  PROPS = MovieSerializer::PROPS.deep_merge(
    include: {
      credits: MovieCreditsSerializer::PROPS
    }
  ).freeze

  SHAPE = MovieSerializer::SHAPE.deep_merge(credits: MovieCreditsSerializer::SHAPE).freeze
end
