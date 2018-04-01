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

require 'rails_helper'

RSpec.describe Credit, type: :model do
  describe 'validations' do
    subject { create :credit, person: create(:person), movie: create(:movie) }

    it('should validate presence of movie') { should validate_presence_of(:movie) }
    it('should validate presence of person') { should validate_presence_of(:person) }
    it('should validate uniqueness of movie wrt to person') { should validate_uniqueness_of(:movie).scoped_to(:person_id) }
  end
end
