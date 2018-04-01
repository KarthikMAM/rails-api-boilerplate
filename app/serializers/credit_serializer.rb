# frozen_string_literal: true

# == Schema Information
#
# Table name: credits
#
#  id         :integer          not null, primary key
#  person_id  :integer          not null
#  movie_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_credits_on_movie_id                (movie_id)
#  index_credits_on_person_id               (person_id)
#  index_credits_on_person_id_and_movie_id  (person_id,movie_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (movie_id => movies.id)
#  fk_rails_...  (person_id => people.id)
#

class CreditSerializer < Serializer
  PROPS = {
    include: {
      person: PersonSerializer::PROPS,
      movie: MovieSerializer::PROPS
    },
    only: %i[id]
  }.freeze

  SHAPE = {
    person: PersonSerializer::SHAPE,
    movie: MovieSerializer::SHAPE
  }.freeze
end
