# frozen_string_literal: true

# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  dob        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'validations' do
    it('should validate presence of name') { should validate_presence_of(:name) }
  end
end
