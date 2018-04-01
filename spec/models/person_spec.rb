require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'validations' do
    it('should validate presence of name') { should validate_presence_of(:name) }
  end
end
