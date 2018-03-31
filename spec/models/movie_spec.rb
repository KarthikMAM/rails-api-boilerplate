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
    it('validate presence of name') { should validate_presence_of(:name) }
  end

  describe 'as_json' do
    subject { create :movie, name: 'Test', release_date: Date.today }

    it 'it should have only name, id and release_date in its attributes' do
      expect(subject.as_json).to include('name', 'release_date', 'id')
    end
  end
end
