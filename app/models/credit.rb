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

class Credit < ApplicationRecord
  belongs_to :person
  belongs_to :movie

  validates :person, presence: true
  validates :movie, presence: true, uniqueness: { scope: :person }
end
