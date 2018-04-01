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

require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    it('should validate presence of name') { should validate_presence_of(:name) }
  end
end
