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

class PersonSerializer < Serializer
  PROPS = {
    only: %i[id name dob]
  }.freeze

  SHAPE = {}.freeze
end
