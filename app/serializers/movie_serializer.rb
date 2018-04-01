# frozen_string_literal: true

# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  release_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class MovieSerializer < Serializer
  PROPS = {
    only: %i[id name release_date]
  }.freeze

  SHAPE = {}.freeze
end
